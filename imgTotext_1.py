import  pytesseract as tess
from PIL import Image

# Path to the Tesseract executable (you might need to adjust this)
tess.pytesseract.tesseract_cmd = r'C:/Users/158410/AppData/Local/Programs/Tesseract-OCR/tesseract.exe'

def extract_text_from_image(image_path):
    try:
        # Open the image using PIL (Python Imaging Library)
        img = Image.open(image_path)
        # Use pytesseract to extract text from the image
        extracted_text = tess.image_to_string(img)

        return extracted_text
    except Exception as e:
        return str(e)

if __name__ == "__main__":
    image_path = "C:/Users/158410/Downloads/image_to_text_sample.jpg"
    extracted_text = extract_text_from_image(image_path)

    if extracted_text:
        print("Extracted Text:")
        print(extracted_text)
    else:
        print("No text could be extracted from the image.")
