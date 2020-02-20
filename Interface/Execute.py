from tkinter import *
import os
from PIL import ImageTk, Image
import tkinter.messagebox as box


def open():
    os.startfile(path, 'open')


def dialog():
    box.showinfo('Selection' , 'Your Choice: ' + \
    listbox.get(listbox.curselection()))


window = Tk()
frame = Frame(window)

listbox = Listbox(frame)
listbox.insert(1, 'PowerBI')
listbox.insert(2, 'Excel')
listbox.insert(3, 'Pycharm')

canvas = Canvas(window, width=450, height=230)
image = ImageTk.PhotoImage(Image.open('C:\\Users\\matheus.falcirolli\\Desktop\\Arquivos MSF\\908705661_Linx_logo_450.png'))
canvas.create_image(0, 0, anchor=NW, image=image)
canvas.pack()

window.title('Robotic Process Automation - RPA')
window['bg'] = 'grey'
window.geometry('450x430+800+400')

# path = 'C:\Folder Name'
path = 'C:\\Users\\matheus.falcirolli\\PycharmProjects\\LinxProject\\RobotFramework\\Execute'

# lb = Label(window, text='Robotic Process Automation')
# lb.place(x=50, y=75)

button = Button(window, text="Open Execution Folder", command=open)
button.pack(side=BOTTOM)

btn = Button(frame, text='Run', command=dialog)
btn.pack(side=RIGHT, padx=5)

listbox.pack(side=LEFT)
frame.pack(padx=30, pady=30)

window.mainloop()
