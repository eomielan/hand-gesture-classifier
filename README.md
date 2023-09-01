# Rock-Paper-Scissors-Tron Hand Gesture CNN

This repository contains an updated version of the Machine Learning component previously used for the RPS-TRON project. It contains a Convolutional Neural Network (CNN) designed to classify hand gestures into three distinct categories: 'rock,' 'paper,' and 'scissors.'

## Overview

The goal of the RPS-TRON project was to develop a robotic hand, a frontend user interface, and an AI system to play rock-paper-scissors. The project featured two distinct modes: a standard mode and a competitive mode.

1. In the standard mode, players would use the web app to capture an image of their hand gesture, and the robot would respond with a random move. Using the pre-trained ML model, the system would then analyze the player's move to determine the winner.

2. In the competitive mode, a player would use the web app to capture their move, but the robot, using the ML model, would calculate its move to consistently beat the player, ensuring that it wins in every game.

Modularity was an essential aspect of the project design, considering the group had five members. By incorporating AI, web development, and hardware components, each member could focus on one or two unique aspects of the project with minimal overlap. Each component's scope could be expanded or contracted as necessary, allowing each member to contribute with as few roadblocks and dependencies as possible.

## Video Demonstration

[![Video Demonstration](./assets/youtube_thumbnail.jpg)](https://youtu.be/thhxIV0cgXo?si=FxjFKz3m8_ArCqI6 "RPS-TRON Video Demonstration - Click to Watch!")

## Installation & Usage

1. Clone this repository:

```bash
git clone https://github.com/eomielan/rps-tron-gesture-cnn.git
```

2. Ensure that Python >= 3.8 is installed.

3. Train the Model:

   Choose one of the following methods to train the model based on operating system:

   - **Linux and MacOS (`train_model.sh`):**

      To train the model using the provided Bash script, follow these steps:

      - Open a terminal within the repository.
      - Make the script executable with the command: `chmod +x train_model.sh`
      - Run the script with the command: `./train_model.sh`

      This will initiate the training procedure and generate an output jupyter notebook.

   - **Windows (`train_model.ps1`):**

      To train the model using the provided powershell script, follow these steps:

      - Open a terminal within the repository.
      - If the script is not already executable, you'll need to adjust the script execution policy to allow running PowerShell scripts. Open PowerShell as an administrator and run the following command to set the execution policy: `Set-ExecutionPolicy RemoteSigned`
      - Run the script with the command: `.\train_model.ps1`

      This will initiate the training procedure and generate an output jupyter notebook.

4. Use the trained model:

   Choose one of the following methods to use the trained model based on operating system:

   - **Linux and MacOS (`predict_gesture.sh`):**

      To use the trained model using the provided Bash script, follow these steps:

      - Open a terminal within the repository.
      - Make the script executable with the command: `chmod +x predict_gesture.sh`
      - Run the script with the command: `./predict_gesture.sh <img_path.jpg>` where `img_path.jpg` is the path to the gesture image.

      This will use the trained model to print a prediction.

   - **Windows (`predict_gesture.ps1`):**

      To use the trained model using the provided powershell script, follow these steps:

      - Open a terminal within the repository.
      - If the script is not already executable, you'll need to adjust the script execution policy to allow running PowerShell scripts. Open PowerShell as an administrator and run the following command to set the execution policy: `Set-ExecutionPolicy RemoteSigned`
      - Run the script with the command: `.\predict_gesture.ps1 <img_path.jpg>` where `img_path.jpg` is the path to the gesture image.

      This will use the trained model to print a prediction.
