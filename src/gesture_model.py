import torch
import torchvision.transforms as transforms
from PIL import Image
from neural_network import Net


class GestureModel(object):
    def __init__(self, model_path):
        self.model_path = model_path
        self.device = torch.device("cuda" if torch.cuda.is_available() else "cpu")

        self.transform = transforms.Compose([
            transforms.Resize((500, 375)),
            transforms.ToTensor()
        ])

        self.model = Net()
        self.model.load_state_dict(torch.load(self.model_path))
        self.model.eval()
        self.labels = ('rock', 'paper', 'scissors')

    def predict(self, img_path):
        """
        Predict the class label for an input image using the trained gesture recognition model.

        Args:
            img_path (str): The file path of the input image.

        Returns:
            str: The predicted class label for the input image, which can be one of rock, paper,
                or scissors.
        """
        img = Image.open(img_path).convert('RGB')
        img_tensor = self.transform(img).unsqueeze(0).to(self.device)

        with torch.no_grad():
            output = self.model(img_tensor)
        predicted_label = self.labels[torch.argmax(output)]

        return predicted_label
