# Job Market Insights Analysis - GCP Data Warehousing and Storage Lab

## Overview
This project analyzes job market data using Google Cloud Platform (GCP) services including Google Cloud Storage, BigQuery, and Looker Studio to uncover insights about salaries, skills demand, and hiring trends.

## What I Did

### 1. Local GCP Setup
- Installed and configured Google Cloud SDK on local machine
- Authenticated using `gcloud auth login`
- Set up project configuration with `gcloud config set project`

### 2. Cloud Storage Setup
- Created a GCS bucket named `gcp-lab-bucket` in `us-east1` region
- Configured IAM permissions and service accounts
- Uploaded `job_market_dataset.csv` to the bucket using `gsutil cp`
- Enabled versioning for data tracking

### 3. BigQuery Configuration
- Created dataset: `job_marketinsights_dataset`
- Created table: `jobmarket_table`
- Loaded data from GCS bucket into BigQuery table
- Configured schema with 10 columns including job_title, company, location, salary ranges, skills, etc.

### 4. SQL Analysis
Developed and executed 7+ custom SQL queries to analyze:
- Top paying job categories by average salary
- Experience level vs salary correlation
- Most in-demand skills in the job market
- Geographic distribution of job postings
- Monthly hiring trends over time
- Salary gap analysis by job type
- Company hiring patterns and diversity

All queries include detailed comments explaining logic and purpose.

### 5. Data Visualizations
Created multiple visualizations in BigQuery:
- Bar charts for salary comparisons
- Line charts for experience-salary relationships
- Pie charts for job type distribution
- Column charts for skill demand analysis

Screenshots of all query results saved in `screenshots/` folder.

### 6. Looker Studio Dashboard
- Connected BigQuery dataset to Looker Studio
- Built interactive dashboard with:
  - Scorecard metrics (total jobs, avg salary, top skills)
  - Category salary comparison charts
  - Experience vs salary 
  - Top companies hiring table

## Key Insights
- Identified highest paying job categories and locations
- Analyzed correlation between experience and compensation
- Discovered most valuable skill combinations
- Tracked hiring trends across different time periods

## Technologies Used
- Google Cloud Storage (GCS)
- BigQuery
- Looker Studio
- Google Cloud SDK (gsutil, gcloud)

## Files
- `screenshots/` - Contains PNG images of all query results and visualizations
- SQL queries documented in lab guide with inline comments
