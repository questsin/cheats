#Keras is a high-level neural networks API, written in Python and capable of running on top of #TensorFlow, CNTK, or Theano. It was developed with a focus on enabling fast experimentation. Being #able to go from idea to result with the least possible delay is key to doing good research.

import pandas as pd
import keras
from keras.models import Sequential
from keras.layers import *
import os

#layers
    #keras.layers.Dense 
    #keras.layers.convolutional.Conv2D vs pictures
    #keras.layers.recurrent.LSTM for sequential 


RUN_NAME = "run 2 with 5 nodes"
# Step 0 -- data
training_data_df = pd.read_csv("sales_data_training_scaled.csv")

X = training_data_df.drop('total_earnings', axis=1).values
Y = training_data_df[['total_earnings']].values

# Step 1 -- Define the model
model = Sequential()
model.add(Dense(5, input_dim=9, activation='relu', name='layer_1'))
model.add(Dense(100, activation='relu', name='layer_2'))
model.add(Dense(50, activation='relu', name='layer_3'))
model.add(Dense(1, activation='linear', name='output_layer'))
model.compile(loss='mean_squared_error', optimizer='adam')

# Create a TensorBoard logger
#os.system('rm -R logs')
logger = keras.callbacks.TensorBoard(
    log_dir='logs/{}'.format(RUN_NAME),
    histogram_freq=5,
    write_graph=True
)

## show tensorboard
##os.system('tensorboard --logdir=logs')
##os.system('open http://0.0.0.0:6006')

# Step 2 - Train the model
model.fit(
    X, ##Training data
    Y, #Expected output
    epochs=50,
    shuffle=True,
    verbose=2,
    callbacks=[logger]
)

# Step 3 - Test, Load the separate test data set
test_data_df = pd.read_csv("sales_data_test_scaled.csv")

X_test = test_data_df.drop('total_earnings', axis=1).values
Y_test = test_data_df[['total_earnings']].values

## load the model if previously saved
## model = load_model('trained_model.h5')
test_error_rate = model.evaluate(
    X_test, 
    Y_test, 
    verbose=0
)
print("The mean squared error (MSE) for the test data set is: {}".format(test_error_rate))

# Save the model to disk
model.save("trained_model")
print("Model saved to disk.")

## Step 4 - Use the model to make predictions with new data
##load data to make predictions
##X = pd.read_csv("proposed_new_product.csv").values
##prediction = model.predict(X)

# Grab just the first element of the first prediction (since we only have one)
##prediction = prediction[0][0]