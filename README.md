# Gans E-Scooter Data Engineering Project
## Overview
Congratulations on discovering the Gans E-Scooter Data Engineering Project! This repository showcases the journey of building a scalable data pipeline to predict e-scooter movements for Gans, a startup in the e-scooter-sharing space. As a Junior Data Engineer, I undertook the challenge of collecting, transforming, and storing data to address operational challenges faced by Gans.

## Project Phases
### Phase 1: Building the Local Data Pipeline
In this phase, the focus was on running scripts locally to collect data from the internet and store it in a local MySQL instance. The process involved web scraping, API data collection, database modeling, and local storage.

#### Scraping Data from the Web:
+ Utilized Beautiful Soup for web scraping.
+ Tested functionality on a small example, gradually expanding to the full scope.

#### Collecting Data with APIs:
+ Leveraged Python's requests library for API interaction.
+ Addressed challenges like managing free tier usage.

#### Creating a Database Model:
+ Designed a logical structure for the MySQL database.
+ Considered table relationships and data organization.

#### Storing Data Locally in MySQL:
+ Set up a local MySQL instance.
+ Tested data storage and integrity.

### Phase 2: Cloud Pipeline
Transitioning to the cloud involved setting up an AWS RDS database, moving scripts to Lambda functions, and automating the pipeline.

#### Setting Up a Cloud Database:
+ Migrated to AWS RDS for a scalable solution.
+ Emphasized advantages like scalability and flexibility.

#### Moving Scripts to Lambda:
+ Transitioned data collection scripts to AWS Lambda functions.
+ Explored benefits of cloud-based execution.

#### Automating the Pipeline:
+ Used CloudWatch Events / EventBridge for scheduling.
+ Achieved regular and consistent updates.

## Key Learnings and Challenges
Throughout the project, I encountered various challenges and gained valuable insights. The README captures key learnings, challenges faced, and overall project reflections.

## Acknowledgments
I want to express gratitude to the WBS Coding School for this exciting project and the vibrant GitHub community for inspiration and support.

Feel free to reach out with questions or contributions!
