# Spotify API End-to-End Data Engineering Project

### Description

This project aims to provide a scalable ETL (Extract, Transform, Load) pipeline using the Spotify API on AWS.The pipeline retrieves data from the Spotify API, performs necessary transformations to format the data as per the requirements, and loads it into an AWS data store for further processing.

The pipeline is built using a combination of popular technologies, including Python, AWS Lambda, and AWS Glue. We have also used AWS S3 as a storage solution to store the transformed data.

### Steps
- We first integrate with Spotify API and extract Data from the API using Python.
  - Libraries used : spotipy and pandas
  - we also need client id and client secret key from spotify developer account.
- Then we deploy the code on **AWS Lambda** for Data Extraction.
- We the write transformation function on AWS Lambda.
- Then add trigger to run the extraction automatically.
- Build automated trigger on transformation function.
- These extracted and transformed files are stored on **Amazon S3** by creating a bucket and folders in the bucket appropriately.
- After this we use **AWS Glue**  and **Athena** on these data files to build a DB with the analytics tables.
