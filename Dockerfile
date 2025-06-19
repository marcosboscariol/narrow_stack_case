FROM mageai/mageai:latest

WORKDIR /home/src

COPY mage_project/ mage_project/
COPY data/ data/

EXPOSE 6789

RUN pip install pandas pyarrow s3fs boto3 sqlalchemy psycopg2-binary

RUN dbt deps

CMD ["mage", "start", "mage_project"]


