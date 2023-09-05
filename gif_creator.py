import PIL
from PIL import Image
paths=["C:/Users/158410/Downloads/mountains.jpg",
       "C:/Users/158410/Downloads/lakes.png"]

Images=[]
for path in paths:
    Images.append(Image.open(path))

target_size=(500,300)
resized_image=[]
for image in Images:
    resized_image.append(image.resize(target_size))

base_image=resized_image[0]
frames=[base_image]
frames.extend(resized_image[1:])
frames[0].save('output.gif', save_all=True, append_images=frames[1:],loop=0,duration=500)
