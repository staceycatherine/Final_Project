# **************************************
# keras.models.Sequential()
# **************************************
# Import dependencies
import pandas as pd
import tensorflow as tf
import os
from sklearn.model_selection import train_test_split
from sklearn.preprocessing import StandardScaler,OneHotEncoder
from sklearn.linear_model import LinearRegression
from tensorflow.kera.callbacks import ModelCheckpoint

# **************************************
# Configuration Variables
# **************************************

# ******************
# First Layer Configuration
kS_nn_first_units       = 8
kS_nn_first_activation  = "relu"

# ******************
# Output Layer Configuration
kS_nn_output_units      = 1
kS_nn_output_activation = "sigmoid"

# ******************
# Deep Learning Configuration
kS_nn_deep_layers       = [
    # Comment out the next two lines to disable "deep learning"
    {"units": 16,
     "activation": "relu"},

    # Add more layers with
    #    {"units": <units>,
    #     "activation": <activation>},
                     ]

# ******************
# Compiler Configuration
kS_nn_compile_loss      = "binary_crossentropy"
kS_nn_compile_optimizer = "adam"
kS_nn_compile_metrics   = ["accuracy"]


# ******************
# Training Configuration
kS_nn_train_epochs      = 100

# ******************
# Output File
kS_nn_file              = "kS-Enlistment_Prediction.h5"

# **************************************
# **************************************
# Neural Network - Sequential
# **************************************
# **************************************
def run_model_sequential():

    # Define the model
    number_input_features = len(X_train_scaled[0])

    nn = tf.keras.models.Sequential()

    # First hidden layer
    nn.add(tf.keras.layers.Dense(units=kS_nn_first_units,
                input_dim=number_input_features,
                activation=kS_nn_first_activation))

    # Additional hidden layers
    for layer in kS_nn_deep_layers:
        nn.add(tf.keras.layers.Dense(units=layer['units'],
                                     activation=layer['activation']))

    # Output layer
    nn.add(tf.keras.layers.Dense(units=kS_nn_output_units, activation=kS_nn_output_activation))

    # Check the structure of the model
    print(nn.summary())

    # Compile the model
    nn.compile(loss=kS_nn_compile_loss, optimizer=kS_nn_compile_optimizer, metrics=kS_nn_compile_metrics)

    # Train the model
    fit_model = nn.fit(X_train_scaled, y_train,epochs=kS_nn_train_epochs)

    # Evaluate the model using the test data
    model_loss, model_accuracy = nn.evaluate(X_test_scaled,y_test,verbose=2)
    print(f"Loss: {model_loss}, Accuracy: {model_accuracy}")

    kS_nn_new.save(kS_nn_file)

# end run_model_sequential()
# **************************************


# **************************************
# **************************************
# **************************************
run_model_sequential()

