# *****************************************************************************
# *****************************************************************************
# *****************************************************************************
# Module 20:        Final Project
# Author:           Fritz Knack
# File:             utils_common.py
#
# Contains functions used by one or more of the Jupyter Notebooks and other
# code used in the project.
#
# *****************************************************************************
# *****************************************************************************
# *****************************************************************************

from sqlalchemy.orm import Session
from sqlalchemy import create_engine
from config import pw_postgres
from sklearn.preprocessing import OneHotEncoder
import pandas as pd


# *****************************************************************************
# *****************************************************************************
#  get_db_engine()
#  Parameters: None
#  Returns: sqlalchemy database engine
# *****************************************************************************
# *****************************************************************************
def get_db_engine():
    # ######################
    # DB Connect String
    # ######################
    # Postgres
    # postgresql+psycopg2://postgres:password@host:port/dbname[?key=value&key=value...]
    DB_PASS = pw_postgres
    aws_database = 'shrbfk-final-project.cuitpsvagrne.us-east-2.rds.amazonaws.com:5432'
    db_string = "postgresql+psycopg2://postgres:" + DB_PASS + "@" + aws_database + "/vet_data"
    try:
        db_engine = create_engine(db_string)
        return db_engine
    except Exception as e:
        print(f"\nFailed to create database connection to {aws_database}.\n", e)
        exit()

# end get_db_engine()
# *****************************************************************************

# *****************************************************************************
# *****************************************************************************
#  get_db_session()
#  Parameters: None
#  Returns: sqlalchemy Session
# *****************************************************************************
# *****************************************************************************
def get_db_session():
    db_engine = get_db_engine()
    try:
        db_session = Session(db_engine)
        return db_session
    except Exception as e:
        print(f"\nFailed to create database Session with engine {db_engine}.\n", e)
        exit()
    

# end get_db_session()
# *****************************************************************************
    
# *****************************************************************************
# *****************************************************************************
#  encode_dataframe()
#  Parameters: Dataframe to be encoded (df)
#  Returns: Dataframe in which categorical values have been converted to
#       encoded numerical values.
# *****************************************************************************
# *****************************************************************************
def encode_dataframe(combined_df):
    combined_df = combined_df.drop('FIPS', axis=1)
    df_labels = combined_df[['State', 'County']]
#    combined_cat = combined_df.dtypes[combined_df.dtypes == 'object'].index.tolist()

    # Create a OneHotEncoder instance
    enc = OneHotEncoder(sparse=False)

    # Fit and transform the OneHotEncoder using the categorical variable list
#    encode_df = pd.DataFrame(enc.fit_transform(combined_df[combined_cat]))
    encode_df = pd.DataFrame(enc.fit_transform(combined_df))

    # Add the encoded variable names to the dataframe
#    encode_df.columns = enc.get_feature_names(combined_cat)
    encode_df.columns = enc.get_feature_names(combined_df)
    
    # Merge one-hot encoded features and drop the originals
    combined_df = combined_df.merge(encode_df, left_index=True, right_index=True)
#    combined_df = combined_df.drop(columns = combined_cat)
#    combined_df = combined_df.drop(columns=["column name"]) # Artifact from the module?

    combined_df = combined_df.merge(df_labels, left_index=True, right_index=True)
    return combined_df

# end encode_dataframe()
# *****************************************************************************
