from tkinter import *

window = Tk()


def bt_click():
    print('OK')
    lb["text"] = 'Executado!'


bt = Button(window, width=20, text='Executar', command=bt_click)
bt.place(x=130, y=190)

lb = Label(window, text='Linx')
lb.place(x=190, y=130)

window.title('Linx')
window['bg'] = 'purple'
window.geometry('400x300+800+400')
window.mainloop()
