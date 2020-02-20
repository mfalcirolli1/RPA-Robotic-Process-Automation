from tkinter import *
# Propriedade side

window = Tk()
window.title('Linx')
window['bg'] = 'purple'
window.geometry('300x200+800+400')

lb1 = Label(window, text='S', bg='blue')
lb1.pack(side=TOP, fill=BOTH, expand=1)
lb2 = Label(window, text='W', bg='red')
lb2.pack(side=TOP, fill=BOTH, expand=1)
lb3 = Label(window, text='N', bg='yellow')
lb3.pack(side=TOP, fill=BOTH, expand=1)
lb4 = Label(window, text='E', bg='green')
lb4.pack(side=TOP, fill=BOTH, expand=1)

bt = Button(window, width=20, text='OK')
bt.place(x=75, y=110)

window.mainloop()