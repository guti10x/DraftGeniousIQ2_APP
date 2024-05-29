# Dependencias
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.common.exceptions import StaleElementReferenceException, ElementNotInteractableException, ElementClickInterceptedException, NoSuchElementException
from bs4 import BeautifulSoup
import time
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC

print("Starting scraper...")





###ACTUALIZAR EN LA BD LOS JUGADORES TRANSFERIBLES

## 1-Inicializamos todos los jugadores del mercado




def extraer_info_jugador():
    stadisticas_player = {}

    # Inicializar variables
    nombre_texto = ''
    apellido_texto = ''
    espacio = ''

    try:
        nombre = driver.find_element(By.XPATH, "/html/body/div[6]/div[3]/div[2]/div[1]/div/div[1]/div[2]")       
        apellido = driver.find_element(By.XPATH, " /html/body/div[6]/div[3]/div[2]/div[1]/div/div[1]/div[3]")
        nombre_texto = nombre.text if nombre.text else ''
        apellido_texto = apellido.text if apellido.text else ''
        espacio = ' ' if nombre_texto and apellido_texto else ''
    except (StaleElementReferenceException, ElementNotInteractableException, ElementClickInterceptedException, NoSuchElementException) as e:
        driver.refresh()
        time.sleep(3)
        elemento_padre = driver.find_element(By.CLASS_NAME, "left")
        nombre = elemento_padre.find_element(By.CLASS_NAME, "name")
        apellido = elemento_padre.find_element(By.CLASS_NAME, "surname")
        nombre_texto = nombre.text if nombre.text else ''
        apellido_texto = apellido.text if apellido.text else ''
        espacio = ' ' if nombre_texto and apellido_texto else ''

    #### IMPRIMIR TODOS LOS DATOS ####
    print(f"{nombre_texto}{espacio}{apellido_texto}")
    
# EMPEZAR SCRAPER
print("Lanzando driver...")
driver = webdriver.Chrome()

# Navega a la página web que deseas hacer scraping
driver.get("https://mister.mundodeportivo.com/new-onboarding/#market")

# Espera a que se cargue la página
driver.implicitly_wait(15)

# Encuentra el botón de "Consentir" 
button = driver.find_element(By.XPATH, '//*[@id="didomi-notice-agree-button"]')
# Haz clic en el botón de "Consentir" 
button.click()

# Encuentra el botón de "Siguinete" 
button = driver.find_element(By.CLASS_NAME, "btn--capsule") 
# Haz clic en el botón de "Siguiente" 
button.click()
time.sleep(0.5)
button.click()
time.sleep(0.5)
button.click()
time.sleep(0.5)
button = driver.find_element(By.CLASS_NAME, "btn--capsule") 
button.click()
time.sleep(0.5)
        
# Encuentra el botón de "sing con gmail" 
button = driver.find_element(By.XPATH, '//*[@id="app"]/div/div[2]/div/button[3]')
button.click()

# Localiza el elemento del input gmail
inputgmail = driver.find_element(By.XPATH, '//*[@id="email"]')

# Borra cualquier contenido existente en la caja de texto (opcional)
inputgmail.clear()

# Ingresa texto en la caja de texto
inputgmail.send_keys("m31_grupo6@outlook.com")


# Localiza el elemento del input gmail
inputpsw = driver.find_element(By.XPATH, '//*[@id="app"]/div/div[2]/div/form/div[2]/input')

# Ingresa texto en la caja de texto
inputpsw.send_keys("Chocoflakes2")

# Encuentra el botón de "sing con gmail" 
button = driver.find_element(By.XPATH, '//*[@id="app"]/div/div[2]/div/form/div[3]/button')
time.sleep(0.5)
button.click()


buttonmenu = driver.find_element(By.XPATH, '/html/body/div[3]/header/div[1]/div[1]/button')
time.sleep(0.5)
buttonmenu.click()

buttonconfi = driver.find_element(By.XPATH, '/html/body/div[2]/div[1]/button')
time.sleep(0.5)
buttonconfi.click()


buttonedit = driver.find_element(By.XPATH, '/html/body/div[6]/div[3]/div/ul[1]/li[2]')
time.sleep(0.5)
buttonedit.click()

# Espera hasta que el popup sea visible
popup = WebDriverWait(driver, 10).until(
    EC.visibility_of_element_located((By.ID, "popup"))
)

# Una vez que el popup es visible, encuentra el input del nombre
input_nombre = popup.find_element(By.CLASS_NAME, "name")

# Extrae el valor del atributo 'value' del input
nombre_valor = input_nombre.get_attribute('value')

print(f"El nombre extraído es: {nombre_valor}")


driver.quit()