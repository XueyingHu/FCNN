# FCNN
The code within this folder build a fully connected neural network to recognize handwritten numbers based on hardware implementation.

<img width="400" alt="截屏2022-05-15 下午9 37 13" src="https://user-images.githubusercontent.com/84733984/168505464-f4ec85ce-14c8-48b1-acd0-c22ca63920a2.png">

## Language:

- MATLAB

## Traning Algorithm
<img width="698" alt="截屏2022-05-15 下午9 37 53" src="https://user-images.githubusercontent.com/84733984/168505547-b19d4392-f8aa-4e77-8665-dc3e52e25424.png">

## Result
### Confusion Matrix of the FCNN model
<img width="499" alt="截屏2022-05-15 下午9 38 49" src="https://user-images.githubusercontent.com/84733984/168505612-c3392599-8117-494a-bc09-112b2405cac4.png">

### Noise Adding Effect to the FCNN Model's Precision
<img width="300" alt="截屏2022-05-15 下午9 39 28" src="https://user-images.githubusercontent.com/84733984/168505694-cb401009-9e82-4a1a-893f-82ede501a516.png">
<img width="300" alt="截屏2022-05-15 下午9 39 40" src="https://user-images.githubusercontent.com/84733984/168505720-11071cc0-565d-46bd-8a95-a54a31a3a633.png">
<img width="300" alt="截屏2022-05-15 下午9 39 51" src="https://user-images.githubusercontent.com/84733984/168505733-49384341-8ea9-4230-8427-70b110aec317.png">

### Input Downsizing Effect to the FCNN Model's Precision
<img width="478" alt="截屏2022-05-15 下午9 40 56" src="https://user-images.githubusercontent.com/84733984/168505831-fb1be3a6-2dce-4a8c-8eb7-223727a2ba00.png">

## Contents

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
