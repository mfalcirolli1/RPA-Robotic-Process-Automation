from tkinter import *

window = Tk()
window.title('Linx')
window['bg'] = 'purple'
window.geometry('300x200+800+400')


def soma():
    n1 = ed1.get()
    n2 = ed2.get()
    print('OK')

    if str(n1).isnumeric() and str(n2).isnumeric():
        n1 = int(n1)
        n2 = int(n2)
        lb2['text'] = n1 + n2
    else:
        lb2['text'] = 'Valores inválidos.'


ed1 = Entry(window)
ed1.place(x=90, y=50)
ed2 = Entry(window)
ed2.place(x=90, y=80)

bt = Button(window, width=20, text='SOMA', command=soma)
bt.place(x=75, y=110)

lb1 = Label(window, text='Robotic Process Automation')
lb1.place(x=75, y=10)
lb2 = Label(window, text='Resultado')
lb2.place(x=125, y=160)

window.mainloop()
