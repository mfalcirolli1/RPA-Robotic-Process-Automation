from tkinter import *
# Propriedade side

window = Tk()
window.title('Linx')
window['bg'] = 'purple'
window.geometry('300x200+800+400')

lb1 = Label(window, text='Robotic Process Automation', bg='blue')
lb1.pack(side=BOTTOM)
lb2 = Label(window, text='Resultado', bg='red')
lb2.pack(side=LEFT)
lb3 = Label(window, text='Resultado', bg='yellow')
lb3.pack(side=TOP)
lb4 = Label(window, text='Resultado', bg='green')
lb4.pack(side=RIGHT)

bt = Button(window, width=20, text='OK')
bt.place(x=75, y=110)

window.mainloop()