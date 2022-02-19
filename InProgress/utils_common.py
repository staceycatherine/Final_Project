def get_db_session():
    from sqlalchemy.orm import Session
    from sqlalchemy import create_engine #, func, extract

    # ######################
    # DB Connect String
    # ######################
    # Postgres
    # postgresql+psycopg2://postgres:password@host:port/dbname[?key=value&key=value...]
    from config import pw_postgres
    DB_PASS = pw_postgres
    aws_database = 'shrbfk-final-project.cuitpsvagrne.us-east-2.rds.amazonaws.com:5432'
    db_string = "postgresql+psycopg2://postgres:" + DB_PASS + "@" + aws_database + "/vet_data"

    # ######################
    # SQLite (Not used.)
    # db_string = 'sqlite:///SKRBFK_Final_Project.sqlite'

    db_engine = create_engine(db_string)
    db_session = Session(db_engine)
    return db_session
    
def encode_dataframe(df):
    # **************************************
    # encoding
    # **************************************
    # generate categorical variable lists to encode the text
    combined_cat = combined_df.dtypes[combined_df.dtypes == 'object'].index.tolist()

    # Create a OneHotEncoder instance
    enc = OneHotEncoder(sparse=False)

    # Fit and transform the OneHotEncoder using the categorical variable list
    encode_df = pd.DataFrame(enc.fit_transform(combined_df[combined_cat]))

    # Add the encoded variable names to the dataframe
    encode_df.columns = enc.get_feature_names(combined_cat)
    return encode_df

    