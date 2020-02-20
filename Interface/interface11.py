from tkinter import *
window = Tk()
window.title('Linx')
window.geometry('200x100+100+100')

lb1 = Label(window, text='Login:')
lb1.grid(row=1, column=1)
lb2 = Label(window, text='Senha:')
lb2.grid(row=2, column=1)

ent1 = Entry(window)
ent1.grid(row=1, column=2)
ent2 = Entry(window)
ent2.grid(row=2, column=2)

btn = Button(window, text='Confirmar')
btn.grid(row=4, column=2)
window.mainloop()