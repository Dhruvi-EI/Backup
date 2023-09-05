import qrcode
img=qrcode.make("https://www.youtube.com/watch?v=FOGRHBp6lvM&list=PLjVLYmrlmjGfAUdLiF2bQ-0l8SwNZ1sBl")
img.save("QRCode.png")

# img=qrcode.QRCode(version=1,error_correction=qrcode.ERROR_CORRECT_H,box_size=10,border=4)
# img.add_data("https://www.youtube.com/watch?v=Kljl8oRoaX8&list=PLjVLYmrlmjGfAUdLiF2bQ-0l8SwNZ1sBl&index=3?start=5&end=10")
# q=img.make_image(fill_color="red",back_color="white")
# q.save("Qrcode_1.png")