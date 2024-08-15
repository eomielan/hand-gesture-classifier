# Rock-Paper-Scissors-Tron Hand Gesture CNN

This repository contains the machine learning component for a project designed to create a robotic hand that plays rock-paper-scissors. It features a Convolutional Neural Network (CNN) for classifying hand gestures into three categories: 'rock,' 'paper,' and 'scissors'.

## Overview

The project's goal was to develop a robotic hand, a frontend user interface, and an AI system for playing rock-paper-scissors. The project includes two distinct modes: standard and competitive.

1. **Standard Mode:** Players use the web app to capture an image of their hand gesture. The robot then responds with a random move. The pre-trained ML model analyzes the player's gesture to determine the winner.

2. **Competitive Mode:** Players use the web app to capture their gesture, while the robot, guided by the ML model, calculates its move to consistently beat the player, ensuring a win in every game.

Modularity was a key aspect of the project design, given that the team consisted of five members. By integrating AI, web development, and hardware components, each member could focus on one or two specific aspects of the project with minimal overlap. This approach allowed for flexibility in expanding or contracting each component's scope as needed, minimizing roadblocks and dependencies.

## Video Demonstration

[![Video Demonstration](./assets/youtube_thumbnail.jpg)](https://youtu.be/thhxIV0cgXo?si=FxjFKz3m8_ArCqI6 "RPS-TRON Video Demonstration - Click to Watch!")

## Installation & Usage

1. Clone the Repository:

```bash
git clone https://github.com/eomielan/hand-gesture-classifier.git
```

2. Ensure Python >= 3.8 is installed.

3. Train the Model:

   Choose the appropriate method for your operating system to train the model:

   - **Linux and macOS:**

      To train the model using the provided Bash script:

      - Open a terminal within the repository directory.
      - Make the script executable with: `chmod +x train_model.sh`
      - Run the script with: `./train_model.sh`

      This will start the training procedure and generate an output Jupyter notebook.

   - **Windows:**

      To train the model using the provided PowerShell script:

      - Open PowerShell as an administrator.
      - Adjust the script execution policy to allow running scripts by executing: `Set-ExecutionPolicy RemoteSigned`
      - Open a terminal within the repository directory.
      - Run the script with: `.\train_model.ps1`

      This will start the training procedure and generate an output Jupyter notebook.

4. Use the trained model:

   Choose the appropriate method for your operating system to use the trained model:

   - **Linux and macOS:**

      To use the trained model with the provided Bash script:

      - Open a terminal within the repository directory.
      - Make the script executable with: `chmod +x predict_gesture.sh`
      - Run the script with: `./predict_gesture.sh <img_path.jpg>`, where `<img_path.jpg>` is the path to the gesture image.

      This will use the trained model to print a prediction.

   - **Windows:**

      To use the trained model with the provided PowerShell script:

      - Open PowerShell as an administrator.
      - Adjust the script execution policy to allow running scripts by executing: `Set-ExecutionPolicy RemoteSigned`
      - Open a terminal within the repository directory.
      - Run the script with: `.\predict_gesture.ps1 <img_path.jpg>`, where `<img_path.jpg>` is the path to the gesture image.

      This will use the trained model to print a prediction.
