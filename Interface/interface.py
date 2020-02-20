from tkinter import *

# Gerenciadores de Layout
# place - widgets são disposto conforme suas coordenadas X e Y
# pack - empacota os widgets na horizontal ou vertical
# grid - widgets são inseridos num sistema de células de uma tabela

window = Tk()

window.title('Linx')
window['bg'] = 'black'

#LxA+E+T
window.geometry('400x300+800+400')

Label(window, text="Linx").pack()

window.mainloop()


