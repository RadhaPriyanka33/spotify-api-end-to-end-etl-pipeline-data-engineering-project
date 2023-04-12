# Spotify API End-to-End Data Engineering Project

### Description

This project aims to provide a scalable ETL (Extract, Transform, Load) pipeline using the Spotify API on AWS.The pipeline retrieves data from the Spotify API, performs necessary transformations to format the data as per the requirements, and loads it into an AWS data store for further processing.

The pipeline is built using a combination of popular technologies, including Python, AWS Lambda, and AWS Glue. We have also used AWS S3 as a storage solution to store the transformed data.

### About Dataset/API
This project dataset is the information about artists, albums, and songs of Top Songs - Global featured chart on Spotify. 

This API provides a wide range of functionalities like retrieving data about music artists, albums and songs, searching for spotify content, etc. - [Spotify API](https://developer.spotify.com/documentation/web-api)

### Services Used
1. **S3 (Simple Storage Service):** Amazon S3 is a highly scalable object storage service that can store and retrieve any amount of data from anywhere on the web. It is commonly used to store and distribute large media files, data backups, and static website files.
2. **AWS Lambda:** AWS Lambda is a serverless computing service that lets you run your code without managing servers. You can use Lambda to run code in response to events like changes in S3, DynamoDB, or other AWS serives.
3. **Cloud Watch:** Amazon CloudWatch is a monitoring service for AWS resources and the applications you run on them. You can use CloudWatch to collect and track metrics, collect and monitor log files, and set alarms.
4. **Glue Crawler:** AWS Glue Crawler is a fully managed service that automatically crawls your data sources, identifies data format, and infers schemas to create an AWS Glue Data Catalog.
5. **Data Catalog:** AWS Glue Data Catalog is a fully managed metadata repository that makes it easy to discover and manage data in AWS. You can use the Glue Data Catalog with other AWS services, such as Athena.
6. **Amazon Athena:** Amazon Athena is an interactive query service that makes it easy to analyze data in Amazon S3 using standard SQL. You can use Athena to analyze data in your Glue Data Catalog or in other S3 buckets.

### Steps
- We first integrate with Spotify API and extract Data from the API using Python.
  - Libraries used : spotipy and pandas
  - we also need client id and client secret key from spotify developer account.
- Then we deploy the code on **AWS Lambda** for Data Extraction.
- We the write transformation function on AWS Lambda.
- Then add trigger using **CloudWatch** to run the extraction automatically, once a day.
- Build automated trigger on transformation function.
- These extracted and transformed files are stored on **Amazon S3** by creating a bucket and folders in the bucket appropriately.
- After this we use **AWS Glue**  and **Athena** on these data files to build a DB with the analytics tables.
