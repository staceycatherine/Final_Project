# Final_Project
## Communication Protocols
#### 1. We agree to communicate via Slack or text and respond within 24 hours. 
#### 2. We agree to notify each other of any scheduled or unscheduled absences. 
#### 3. We agree to review any changes before adding to the main branch.
#### 4. Edits to .gitignore will be done directly at the main branch. 

##### Contributions: We choose to work and present as a group, with each of us contributing equal time and effort. We acknowledge that this will result in a group grade for this final project. 
___________________________________________________________________________________________________________________________________________________________________________________
## Topic
#### Our broad focus is on Veterans. Ron and Fritz both have deep roots in the military. Ron's grandfather, father and uncle are veterans. Ron attended military school and worked as a chaplain for a homeless shelter. Fritz is a third-generation veteran who served four years in the United States Air Force. He is interested in recruitment demographics, active duty family life, and veterans issues. Stacey's father is a veteran and she has provided in person and telephonic nursing services to many veterans over the years. Initially, we talked about veterans and access to healthcare but after looking at the data, we have changed course and will be analyzing historical data to predict what locations are likely to have a higher enlistment percentage over the next 5 years. 

## Data
#### We retrieved data from Kaggle including census details on a variety of categories in rural areas by county in the US for 2010-2019. The data came from a variety of Federal sources with detailed descriptions of each category located on the USDA's website. The information is divided into four main groups; people, veterans, income and jobs, with hundreds of sub-categories for each county including population, ethnicity, unemployment and retirement data. Ron cleaned the data, sorted the columns and created dataframes which he then exported into csv files. Fritz imported the data and created tables for county classification, income, jobs, people and veterans. Ron added longitude and latitude for each state to use for visualization. 


___________________________________________________________________________________________________________________________________________________________________________________
## Machine Learning Model
#### What type of model and why? We plan to start with multiple linear regression and compare the results with ridge and lasso regression since we are looking for predictive trends not classifications. We are considering deep learning, neural networks. 
#### Preliminary data preprocessing
#### Preliminary feature engineering and feature selection including decision making process
#### Description of how data was split into training and testing sets
#### Explanation of model choice including limitations and benefits
#### How are you training your model? 
#### What is your model's accuracy?
#### How does this model work?

![image](https://user-images.githubusercontent.com/90691846/153676445-06c1b2b2-6596-46a1-8a12-ddd2e587e96a.png)

___________________________________________________________________________________________________________________________________________________________________________________
## Database

[Database ERD](Images/Database_ERD.png)

### Postgres hosted on Amazon Web Services.

- **Server Name**: shrbfk-final-project

- **Initial Database**: vet_data

- **Endpoint**: shrbfk-final-project.cuitpsvagrne.us-east-2.rds.amazonaws.com

- **Port**: 5432

- **Security Group**: default (sg-06938851ed8d02d68)

___________________________________________________________________________________________________________________________________________________________________________________
## Technologies Used
#### Data Cleaning and Analysis: Pandas, Jupyter Notebook, SQL
#### Database Storage: AWS, Postgres
#### Machine Learning: SciKit Learn Library, Tensorflow
#### Dashboard: Tableau
