# **********************************************************
# **********************************************************
# To Do
#
# Automate table creation.
# Automate data population.
# Clean the Data            # Ron WIP

# Everything from here down should be set up as functions so that we can make
# the model run, then futz around with parameters rather than digging around in
# working code.
#
# Define columns. Select, bucket, encode, merge, drop.
# Split the data.
# Scale the data.
# Build the model.
# Compile the model.
# Train the model.
# Evaluate the model.
# Checkpoints and data dumps along the way.
# Generate tables for presentation.
#
# **********************************************************
# **********************************************************

# **********************************************************
#   Dependencies
# **********************************************************
#
# Gather our individual contributions. List is alphabetical at the moment.
# May neeed to change import order if we're doing anything cool like
# creating descendants of each others' Classes. This cell for our stuff
# might better be placed after the libraries and such.
#
# import Fritz's code
# import Ron's code
# import Stacey's code


# Libraries and such.
import os
import pandas as pd
import tensorflow as tf
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler,OneHotEncoder
from tensorflow.keras.callbacks import ModelCheckpoint

# Keras complains about GPUs
import warnings
warnings.filterwarnings('ignore')

# ******************
# Extract from module 19 challenge code. Steps 5-11 in Main below.
# ******************
# enc = OneHotEncoder(sparse=False)
# encode_df = pd.DataFrame(enc.fit_transform(application_df[application_cat]))
# encode_df.columns = enc.get_feature_names(application_cat)
# application_df = application_df.merge(encode_df,left_index=True, right_index=True)
# application_df = application_df.drop(application_cat,1)
# y = application_df.IS_SUCCESSFUL
# X = application_df.drop(columns="IS_SUCCESSFUL")
# X_train, X_test, y_train, y_test = train_test_split(X, y, random_state=1, stratify=y)
# scaler = StandardScaler()
# X_scaler = scaler.fit(X_train)
# X_train_scaled = X_scaler.transform(X_train)
# X_test_scaled = X_scaler.transform(X_test)
# nn = tf.keras.models.Sequential()
# input_features = len(X_train_scaled[0])
# nn.add(tf.keras.layers.Dense(units=int_units, activation="relu", input_dim=input_features))
# nn.add(tf.keras.layers.Dense(units=int_units, activation="relu", input_dim=input_features))
# nn.add(tf.keras.layers.Dense(units=1, activation="sigmoid"))
# nn.summary()
# nn.compile(loss="binary_crossentropy", optimizer="adam", metrics=["accuracy"])
# fit_model = nn.fit(X_train_scaled,y_train,epochs=50)

# ******************
# ******************
# ******************
#
#   Main
#
# ******************
# ******************
# ******************

#  1. Fetch the data.           # Data was retrieved manually.
#  2. Create tables.            # Manual, but plan to change.
#  3. Populate the database.    # Currently manual, but plan to change.
#  4. Clean the Data            # Ron WIP

# Functions.
#
#  5. Define columns. Select, bucket, encode, merge, drop.
#  6. Split the data.
#  7. Scale the data.
# 7.5.Build the model.
#  8. Compile the model.
#  9. Train the model.
# 10. Evaluate the model.
# 11. Checkpoints and data dumps along the way.
# 12. Generate tables for presentation