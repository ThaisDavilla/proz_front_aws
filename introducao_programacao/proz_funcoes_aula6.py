# -*- coding: utf-8 -*-
"""proz_funcoes_aula6.ipynb

Automatically generated by Colaboratory.

Original file is located at
    https://colab.research.google.com/drive/15LJtSUL_HsW8F8FFTFDHIct4-T8OoQdr
"""

def escolhaNumero():

  numero_valido = False



  while(numero_valido == False):

    try:

      numero = int(input("insira um número de 0 a 100"))

      if(numero < 0):

        print("Número inválido, escolha um número maior que 0")

      elif(numero > 100):

        print("Número inválido, escolha um número menor que 100")

      else:

        print("Você escolheou o número", numero)

        numero_valido = True

    except:

      print("Cara, você precisa digitar um número válido!")


escolhaNumero()

def escolhaNumero():

  numero_valido = False



  while(numero_valido == False):

    try:

      numero = int(input("insira um número de 0 a 100"))

      if(numero < 0):

        print("Número inválido, escolha um número maior que 0")

      elif(numero > 100):

        print("Número inválido, escolha um número menor que 100")

      elif(numero % 2 != 0):

        print("Escolha um número ímpar.")

      else:

        print("Você escolheu o número", numero)

        numero_valido = True

    except:

      print("Cara, você precisa digitar um número válido!")





escolhaNumero()

"""Criar uma segunda função que receba um número de usuário, mas que o número tenha que ser divisível por 2 E por 3"""

def escolhaNumero():
    numero_valido = False



    while not numero_valido:
        try:
            numero = int(input("Escolha um número de 0 a 100: "))



            if numero < 0:
                print("Número inválido, escolha um número maior que 0.")
            elif numero > 100:
                print("Número inválido, escolha um número menor que 100")
            elif numero % 2 == 0 and numero % 3 == 0:
                print("O número é aceito.")
                numero_valido = True
            elif numero % 2 == 0:
                print("O número não é divisível por 3, mas é divisível por 2.")
            elif numero % 3 == 0:
                print("O número não é divisível por 2, mas é divisível por 3.")
            else:
                print("O número não é divisível por 2 e por 3.")



        except ValueError:
            print("Insira um número válido!")



escolhaNumero()