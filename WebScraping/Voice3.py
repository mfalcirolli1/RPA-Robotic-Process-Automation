import pygame

#Iniciando o mixer Pygame
pygame.mixer.init()

#Iniciando o Pygame
pygame.init()

pygame.mixer.music.load('ola.mp3')
pygame.mixer.music.play()
pygame.event.wait()
