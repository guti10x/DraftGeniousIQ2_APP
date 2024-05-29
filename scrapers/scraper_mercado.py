# SCRAPER DE ESTADÍSTICAS DE LOS JUGADORES TRANSFERIBLES EN LA LIGA MISTER FANTASY
#
#  -By: Daniel Gutiérrez Torres (https://github.com/guti10x)
#
#  -Esquema de funcionamiento:
#     1- Nos logueamos en la web de MF
#     
#     2- Accedemos al subapartado Tabla donde se encuentra el mercado
#     
#     3- Accedemos a cada uno de los jugadores y extraemos el nombre y apellido
#     
#     4- Además inicializa datos como 

# Dependencias
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.common.exceptions import StaleElementReferenceException, ElementNotInteractableException, ElementClickInterceptedException, NoSuchElementException
import time

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



# Encuentra el elemento <ul> con el id "mercado"
btn_mercado = driver.find_element(By.XPATH, '//*[@id="content"]/header/div[2]/ul/li[2]/a')
time.sleep(0.5)
btn_mercado.click()


while True:
    try:
        button = driver.find_element(By.XPATH, '//*[@id="content"]/header/div[2]/ul/li[2]')
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
        time.sleep(4)
    
print("Btn Tabla pulsado")



pag=2
index=0
absolute=1
jornada_absolute=""
progress=0
jugadores_error_scraping = []

while True:
    # Encontrar todos los elementos li
    elementos_lis = driver.find_elements(By.CSS_SELECTOR, "div.player-row")

    # Longitud de la lista de elementos encontrados
    length=len(elementos_lis)
    print("Players found:", len(elementos_lis))

    while index < length:
        

        # Encontrar todos los elementos li
        try:
            time.sleep(1)
            elementos_li = driver.find_elements(By.CSS_SELECTOR, "div.player-row")
            elementos_li[index].click()

        except (StaleElementReferenceException, ElementNotInteractableException, ElementClickInterceptedException, NoSuchElementException) as e:     
            time.sleep(0.5)
            elementos_li = driver.find_elements(By.CSS_SELECTOR, "div.player-row")

            #Almacenamos el nombre del jugador al que no se pudo acceder para scrapear sus datos asociados
            nombre_jugador = elementos_li[index].find_element(By.CSS_SELECTOR, ".info .name").text
            print(f"El jugador {nombre_jugador} no pudo ser scrapeado !!!!!!")
            jugadores_error_scraping.append(nombre_jugador)

            #Clickar en el siguiente elemento
            index+=1
            elementos_li[index].click()

        time.sleep(1)
            
        try:
            team_logo_element = driver.find_element(By.CSS_SELECTOR, 'img.team-logo')
        except (StaleElementReferenceException, ElementNotInteractableException, ElementClickInterceptedException, NoSuchElementException) as e:                                                     
            try:
                team_logo_element = driver.find_element(By.XPATH, "/html/body/div[7]/div[3]/div[3]/div[1]/div[3]/div/div[1]/div[2]/img[1]")
            except (StaleElementReferenceException, ElementNotInteractableException, ElementClickInterceptedException, NoSuchElementException) as e:                                                    
                team_logo_element = driver.find_element(By.XPATH, "/html/body/div[7]/div[3]/div[3]/div[1]/div[3]/div/div[1]/div[2]/img[2]]")
            
        image_url = team_logo_element.get_attribute("src")
        # Dividir la URL utilizando el signo de igual como delimitador
        parts = image_url.split('=')
        
                    
                 
        absolute = 2
        
        extraer_info_jugador()
            
        #Retroceder página
        driver.back()
        time.sleep(1)
        elementos_li = driver.find_elements(By.CSS_SELECTOR, "div.player-row")
        if index == 0:
            driver.execute_script("arguments[0].scrollIntoView(true);", elementos_li[index])
        else:
            driver.execute_script("arguments[0].scrollIntoView(true);", elementos_li[index-1])
        time.sleep(1)
        index += 1


    #Pulsar Ver más
    try:
        print("Click into next page")
        ver_mas = driver.find_element(By.CSS_SELECTOR, 'button.btn.btn-grey.search-players-more[data-scope="globalPlayers"]')

        ver_mas.click()                               
        time.sleep(4)
    except (StaleElementReferenceException, ElementNotInteractableException, ElementClickInterceptedException, NoSuchElementException) as e:
        break

    

print("Todos los jugadores scrapeados a excepción de:")
for elemento in jugadores_error_scraping:
    print(elemento)     

#SEGUNDO INTENTO DE SCRAPING (UTILIZAR BUSCADOR DE JUGADORES) para jugadores que no pudieron ser accedidos y scrapeados 
    
driver.back()
time.sleep(4)
index=0

#Preprocesamos los nombres de los jugadores eliminando el . que abrevia su nombre para que pueda buscarse en el buscados.
for i in range(len(jugadores_error_scraping)):
    jugadores_error_scraping[i] = jugadores_error_scraping[i].replace(".", "")

try:
    # Intentar encontrar y pulsar btn buscar
    btn_buscar = driver.find_element(By.XPATH, '//*[@id="inner-content"]/div[1]/div[1]/button[1]')
    btn_buscar.click()
except (StaleElementReferenceException, ElementNotInteractableException, ElementClickInterceptedException, NoSuchElementException) as e:
    driver.refresh()
    print("Anuncio detectado, reiniciando driver")
    # Intentar encontrar y pulsar btn buscar
    btn_buscar = driver.find_element(By.CSS_SELECTOR, "button.btn-search-more")
    btn_buscar.click()


# Itera sobre la lista de jugadores y entra cada uno en el input de búsqueda
for jugador in jugadores_error_scraping:
    print(f"Buscando a {jugador}")
    # Encuentra el input dentro del div con la clase "sw-top-center"
    input_busqueda = driver.find_element(By.CSS_SELECTOR, "div.sw-top-center input.search-players-input")
    print("Cleaning input...")
    input_busqueda.clear()  # Limpiar el campo de búsqueda
    print("Putting input...")
    input_busqueda.send_keys(jugador)  
    time.sleep(6)  
    # Presionar la tecla Enter  
    input_busqueda.send_keys(Keys.ENTER)
    time.sleep(6)  
    
    try:
        print("Searching player")
        elementos_lis = driver.find_element(By.CSS_SELECTOR, "div.player-row")
        elementos_lis.click()
        time.sleep(1)
        extraer_info_jugador()
        driver.back()
        time.sleep(1)
    except (StaleElementReferenceException, ElementNotInteractableException, ElementClickInterceptedException, NoSuchElementException) as e: 
        print(f"El jugador {jugador} es inaccesible. pruebe insertándolo manualmente.")

print("Scraping finalizado")
# Después de extraer el nombre del jugador
#nombre_jugador = extraer_info_jugador()



driver.quit()
        