from tkinter import *
window = Tk()
window.title('Linx')
window.geometry('300x200+800+400')
lb1 = Label(window, text='Rótulo 1')
lb1.grid(row=1, column=1)  # Havendo apenas 1 widget, esse será sempre disposto na linha 1 coluna 1
lb2 = Label(window, text='Rótulo 2')
lb2.grid(row=1000, column=1000) # não importa a numeração, mas sim os intervalos utilizados
window.mainloop()
