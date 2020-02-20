from gtts import gTTS
import os

mtext = 'Olá, mundo.'
mlang = 'pt-br'
obj = gTTS(text=mtext, lang=mlang, slow=True)

obj.save('ola.mp3')
os.system('ola.mp3')
