import sys
from gesture_model import GestureModel


MODEL_PATH = 'rps_model.pth'


def main():
    if len(sys.argv) != 2:
        print("Usage: python main.py <image_path>")
        sys.exit(1)

    model = GestureModel(MODEL_PATH)
    image_path = sys.argv[1]
    prediction = model.predict(image_path)

    print(f"Processing complete. The result is: {prediction}")


if __name__ == "__main__":
    main()
