#this isnt the complete file and will not work. this is only a sample 
#essa é apenas uma amostra de como funciona e não vai funcionar para você, o script está cortado pela metade
from googleapiclient.discovery import build
from googleapiclient.errors import HttpError
from apiclient.discovery import build
from apiclient.errors import HttpError
from selenium import webdriver
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.common.by import By
from selenium.webdriver.support import expected_conditions as EC
import urllib, json, os

chave = 'api-YouTube-key (change this)'
service = 'youtube'
versao = 'v3'

def leitura(arquivo):
    f = open(arquivo, "r"); principal = f.read(); f.close()
    return principal

principal = leitura('convert.txt')
print(principal)

def pesquisar(palavra, maximo):
  youtube = build(service, versao, developerKey=chave)
  pesquisa = youtube.search().list(q=palavra, part='id', maxResults=maximo).execute()
  for cabecalho in pesquisa.get('items'):
    resultados = json.dumps(cabecalho).split('videoId": "', 1)[-1].split('"', 1)[0]
    return resultados

resultados = pesquisar(principal, 1)
print(resultados)

def resetar(arquivo):
  try:
    f = open(arquivo, "w"); f.write(''); f.close()
  except:
    f = open(arquivo, "x"); f.write(''); f.close()

def escrever(arquivo, texto):
    f = open(arquivo, "a"); f.write(texto); f.close()

get_music = 'https://www.youtube.com/watch?v='+resultados
driver = webdriver.Chrome()
driver.get('sample')
element = driver.find_element_by_id('input')
element.send_keys(get_music)
element = driver.find_element_by_id('button')
element.submit()
try: 
    element = WebDriverWait(driver, 18).until(EC.presence_of_element_located((By.ID, "download")))
finally:
    try:
        element = driver.page_source.split('<a href="', 1)[-1].split('">', 1)[0].split('"', 1)[0]
        resetar('convert2.txt')
        escrever('convert2.txt', element)
    except:
        resetar('convert2.txt')
        escrever('convert2.txt', 'errado')
        print('erro')

driver.close()
driver.quit()
os.exit()
