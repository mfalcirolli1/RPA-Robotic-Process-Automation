from tkinter import *

window = Tk()
window.title('Linx')
window['bg'] = 'purple'
window.geometry('300x200+800+400')


def bt_oc():
    print(ed.get())


ed = Entry(window)
ed.place(x=90, y=50)

bt = Button(window, width=20, text='Run', command=bt_oc)
bt.place(x=75, y=90)

lb = Label(window, text='Robotic Process Automation')
lb.place(x=75, y=10)

window.mainloop()