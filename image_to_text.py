from PIL import Image
from pytesseract import pytesseract
import enum

class Language(enum.Enum):
    ENG='eng'

class imageReader:
    windows_path='C:/Users/158410/AppData/Local/Programs/Tesseract-OCR/tesseract.exe'
    pytesseract.tesseract_cmd=windows_path
    print("running on windows")

    def extract_text(self, image:str, lang:str) -> str:
        img=Image.open(image)
        extracted_text=pytesseract.image_to_string(img,lang=lang)
        return extracted_text

    extract_text("C:/Users/158410/Downloads/image_to_text_sample.jpg",lang=Language.ENG)

