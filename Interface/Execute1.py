from tkinter import *
from tkinter import *
import os
from PIL import ImageTk, Image
import tkinter.messagebox as box


def open():
    os.startfile(path, 'open')


window = Tk()

frame = Frame(window)
listbox = Listbox(frame)

window.title('Robotic Process Automation - RPA')
window['bg'] = 'grey'
window.geometry('450x450+800+400')

canvas = Canvas(window, width=450, height=230)
image = ImageTk.PhotoImage(Image.open('C:\\Users\\matheus.falcirolli\\Desktop\\Arquivos MSF\\Imagens\\908705661_Linx_logo_450.png'))
canvas.create_image(0, 0, anchor=NW, image=image)
canvas.pack()

folder = os.listdir('C:\\Users\\matheus.falcirolli\\PycharmProjects\\LinxProject\\RobotFramework\\Execute')


lbox = Listbox(window)
lbox.pack()

for item in folder:
    lbox.insert(END, item)

path = 'C:\\Users\\matheus.falcirolli\\PycharmProjects\\LinxProject\\RobotFramework\\Execute'

button = Button(window, text="Open Execution Folder", command=open)
button.pack(side=BOTTOM)

window.mainloop()
