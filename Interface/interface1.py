from tkinter import *

window = Tk()

window.title('Linx')
window['bg'] = 'black'

#LxA+E+T
window.geometry('400x300+800+400')

lb = Label(window, text="Linx")
lb.place(x=190, y=130)

window.mainloop()
