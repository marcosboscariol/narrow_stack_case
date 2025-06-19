#  Narrowstack Case - Data Pipeline with Mage, PostgreSQL, MinIO, dbt, and Metabase

## 🔍 Overview

This project implements a complete data pipeline using the following tools:

- **CSV ingestion**: Imports CSV files and stores them as Parquet files in **MinIO**.
- **Data loading**: Loads the Parquet files into a **PostgreSQL** database.
- **Transformations**: Executes **dbt** models for data transformation.
- **Analytics**: Serves dashboards and reports through **Metabase**.

---

## How to Run This Project Locally

Follow these steps to run the complete data stack using Docker.

### 1. 🧱 Prerequisites

Ensure the following tools are installed:

- [Docker](https://docs.docker.com/get-docker/)
- [Docker Compose](https://docs.docker.com/compose/)

### 2. 📁 Project Structure

First, clone this repository:

```bash
git clone https://github.com/your-username/your-repo-name.git
cd your-repo-name
```

The project should have the following structure:

.
├── data/
│   └── csv/
│       ├── clientes.csv
│       ├── itens_vendas.csv
│       ├── produtos.csv
│       └── vendas.csv
├── mage/
│   └── ... (your Mage pipeline files)
    └── dbt_narrowstack
├── docker-compose.yml
├── Dockerfile

### 3. Running the Project with Docker

Follow these steps to start the entire stack using Docker:

```bash
docker compose up -d
```

This will start the following services:

- **Postgres:** for storing data

- **MinIO:** for object storage (S3-compatible)

- **Mage:** for the ETL pipelines

- **Metabase:** for data visualization

- **dbt:** for data transformation

### Access Mage AI

Open your browser and go to:

```bash
http://localhost:6789
```

Inside Mage AI:

- Navigate to the pipeline named `convert_csv_parquet`.
- Choose the desired trigger to schedule the pipeline or run it manually by clicking the **Run** button.

This pipeline will import the CSV files and convert them to Parquet format, storing them in MinIO.

### Optional: Verify Parquet Files in MinIO

MinIO provides a web interface to browse and verify the stored Parquet files.

- Open your browser and navigate to:

```bash
http://localhost:9001
```

- Login with:

  - **Username:** `minioadmin`
  - **Password:** `minioadmin`

- Browse to the bucket named `mage-bucket` and check the `parquet/` folder to see the uploaded Parquet files.

### Verify dbt Transformations

After running the dbt transformations, you can verify that everything worked as expected:

- Check stg and data_mart tables:

```bash
docker exec -it postgres psql -U postgres -d dbt -c "\dt stg.*"
docker exec -it postgres psql -U postgres -d dbt -c "\dt data_mart.*"
```

- Query transformed data:

```bash
docker exec -it postgres psql -U postgres -d dbt -c "SELECT * FROM data_mart.dm_fact_vendas LIMIT 10;"
```
### Access Metabase

Metabase is available at:  
```bash
http://localhost:3001
```

You can explore the data, create dashboards, and visualize your transformed datasets as you prefer.
