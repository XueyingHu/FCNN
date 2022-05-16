# FCNN
The code within this folder build a fully connected neural network to recognize handwritten numbers based on hardware implementation.

Dependencies:

        MATLAB

Contents:

┌── README.md               # This document

|

|── main.m                  # Main training/testing document 

|

|── mytrain.m               # Model training code

|

|── mytest.m                # Model testing code

|
|──layerout.m               # Acctivation function
|
├── Add Noise               # Train model with noise interruption to the graph
|   ├── gaus.m              # Add Gaussian noise
│   ├── salt.m              # Add Salt and Pepper noise
│   └── single_noise.m      # Add consistent noise
|
├── Input/Hidden Layer      # Changes to input layer and hidden layer, to predict hardware performance
│   ├── input_binary.m      # pixel converted into binary input
│   ├── weight_gaus.m       # weight add Gaussian noise
│   ├── weight_binary.m     # weight converted into binary
│   └── weight_oct.m        # weight converted into octonary 
│
└── matlab.mat              # running result within MATLAB
