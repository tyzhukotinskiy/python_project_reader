from PIL import Image
import pytesseract

def translate_some_text(image_path, language):
	f = open('hi.txt', 'w')

	text = pytesseract.image_to_string(Image.open(image_path), lang=language)

	return text