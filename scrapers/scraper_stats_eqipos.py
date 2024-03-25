# Dependencias
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.common.exceptions import StaleElementReferenceException, ElementNotInteractableException, ElementClickInterceptedException, NoSuchElementException
import openpyxl
import time

print("Starting scraper...")

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

# Borra cualquier contenido existente en la caja de texto (opcional)
inputpsw.clear()

# Ingresa texto en la caja de texto
inputpsw.send_keys("Chocoflakes2")

# Encuentra el botón de "sing con gmail" 
button = driver.find_element(By.XPATH, '//*[@id="app"]/div/div[2]/div/form/div[3]/button')
time.sleep(0.5)
button.click()

# Espera a que se cargue la página
driver.implicitly_wait(10)

while True:
    try:
        button = driver.find_element(By.XPATH, '//*[@id="content"]/header/div[2]/ul/li[4]/a')
        time.sleep(0.5)
        button.click()
        print("Anuncio esquivado")
        break

    except (StaleElementReferenceException, ElementNotInteractableException, ElementClickInterceptedException, NoSuchElementException) as e:
        #Mostrar error por interfaz
        print("\nAnuncio detectado, reiniciando driver (1)...")
        print("try2: Refresh()")
        #Refrescar página
        driver.refresh()
        time.sleep(5)
    
print("Btn Tabla pulsado")

# Encontrar todos los elementos <li> sin ninguna clase específica
elementos_li = driver.find_elements(By.CSS_SELECTOR, "li[class='']")
# Imprimir el número de elementos encontrados
print("Número de equipos encontrados:", len(elementos_li))

for elemento_li in elementos_li:
    elemento_li.click()
    time.sleep(5)
    
    #Nombre EQUIPO
    name = driver.find_element(By.XPATH, "/html/body/div[6]/div[3]/div[1]/div[2]/div[2]/div")

    #ESTADÍSTICAS DEL EQUIPO
    div_wrapper = driver.find_element(By.XPATH, "//div[@class='wrapper items thin-scrollbar']")
    # Encontrar todos los elementos <div class="value"> dentro del div encontrado
    div_values = div_wrapper.find_elements(By.XPATH, ".//div[@class='value']")

    # Iterar sobre los elementos <div class="value"> y extraer su texto
    print("Estadisticas del equipo:", name.text)
    for div_value in div_values:
        print(div_value.text)

    # JUGADORES TITULARES DEL EQUIPO
    # Encontrar todos los elementos <a> con la clase "btn btn-player-gw lineup-player"
    elementos_a = driver.find_elements(By.CSS_SELECTOR, "a.btn.btn-player-gw.lineup-player")
    print("Número de jugaodres titulares del equipo: ", len(elementos_a))

    # Iterar sobre los elementos <a> encontrados
    for elemento_a in elementos_a:
        # Encontrar el elemento <div class="name"> dentro de cada elemento <a>
        elemento_name = elemento_a.find_element(By.CSS_SELECTOR, "div.name")
        # Imprimir el texto del elemento <div class="name">
        print(elemento_name.text)
    
        
    driver.back()

driver.quit()   
print("Todos los equipos scrapeados")