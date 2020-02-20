from tkinter import *
from functools import partial

def bt_a():
    print('OK, Im on my way.')

def bt_b(botao):
    print(botao['text'])


window = Tk()
window.title('Linx')
window.geometry('400x300+800+400')
window['bg'] = 'purple'

lb = Label(window, text="Linx")
lb.place(x=190, y=130)

bt1 = Button(window, width=20, text='GO!', command=bt_a)
bt1.place(x=130, y=160)

bt2 = Button(window, width=20, text='STOP!')
bt2['command'] = partial(bt_b, bt2)
bt2.place(x=130, y=190)

window.mainloop()