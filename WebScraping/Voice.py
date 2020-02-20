from gtts import gTTS
import os

mtext = 'Hello, world'
mlang = 'en'
obj = gTTS(text=mtext, lang=mlang, slow=False)

obj.save('wel.mp3')
os.system('wel.mp3')