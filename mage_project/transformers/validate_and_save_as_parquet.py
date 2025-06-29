import os
from pathlib import Path
import pandas as pd
import json
import boto3

if 'transformer' not in globals():
    from mage_ai.data_preparation.decorators import transformer
if 'test' not in globals():
    from mage_ai.data_preparation.decorators import test

@transformer
def transform(data: dict, *args, **kwargs):
    bucket = os.getenv('S3_BUCKET', 'mage-bucket')
    s3_url = os.getenv('S3_ENDPOINT_URL', 'http://localhost:9000')
    s3_path_prefix = f's3://{bucket}/parquet/'

    # Autenticação com MinIO (S3 compatível)
    s3 = boto3.resource(
        's3',
        endpoint_url=s3_url,
        aws_access_key_id=os.getenv('AWS_ACCESS_KEY_ID'),
        aws_secret_access_key=os.getenv('AWS_SECRET_ACCESS_KEY')
    )

    # Cria bucket se não existir
    if bucket not in [b.name for b in s3.buckets.all()]:
        s3.create_bucket(Bucket=bucket)

    # Salvar cada DataFrame no MinIO
    for nome_df, df in data.items():
        s3_path = f"{s3_path_prefix}{nome_df}.parquet"
        df.to_parquet(s3_path, index=False, storage_options={
            'key': os.getenv('AWS_ACCESS_KEY_ID'),
            'secret': os.getenv('AWS_SECRET_ACCESS_KEY'),
            'client_kwargs': {'endpoint_url': s3_url}
        })

    return f'{len(data)} saved files {s3_path_prefix}'

@test
def test_output(output, *args) -> None:
    assert output is not None