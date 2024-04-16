# SCRAPER DE LOS DATOS* DE LOS JUGADoRES DE LA LIGA MISTER FANTASY
#  *datos no cambiantes cada jornada
#
#  -By: Daniel Gutiérrez Torres (https://github.com/guti10x)
#
#  -Esquema de funcionamiento:
#
#    1- Nos logueamos en la web de MF
#    
#    2- Accedemos al subapartado "Más" donde se encuentra el btn "Jugadores" el cual pulsaremos para acceder al listado de TODOS los jugadores disponibles en la web de MF.
#    
#    3- Iteramos y accedemos a cada uno de los jugadores de la lista extrayendo datos y estadísticas como: nombre, posición, equipo, edad, altura y peso
#    
#    4- Además inicializa datos como id_jugador asociado, fecha de creación y actualización.

# Dependencias
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.common.exceptions import StaleElementReferenceException, ElementNotInteractableException, ElementClickInterceptedException, NoSuchElementException
import openpyxl
import time
import mysql.connector

#DEFINIR JORNADA A SCRAPEAR
jornada_a_scrapear = "J29"   #IMPORTANTE que la variable mantenga la J para luego buscar la jornada deseada

teams_data = {
        "Real Madrid": "https://cdn.gomister.com/file/cdn-common/teams/15.png?version=20231117",
        "Real Sociedad": "https://cdn.gomister.com/file/cdn-common/teams/16.png?version=20231117",
        "Atlético de Madrid": "https://cdn.gomister.com/file/cdn-common/teams/2.png?version=20231117",
        "Girona": "https://cdn.gomister.com/file/cdn-common/teams/222.png?version=20231117",
        "Osasuna": "https://cdn.gomister.com/file/cdn-common/teams/50.png?version=20231117",
        "Athletic Club": "https://cdn.gomister.com/file/cdn-common/teams/1.png?version=20231117",
        "Valencia": "https://cdn.gomister.com/file/cdn-common/teams/19.png?version=20231117",
        "Granada": "https://cdn.gomister.com/file/cdn-common/teams/10.png?version=20231117",
        "Getafe": "https://cdn.gomister.com/file/cdn-common/teams/9.png?version=20231117",
        "Villarreal": "https://cdn.gomister.com/file/cdn-common/teams/20.png?version=20231117",
        "Las Palmas": "https://cdn.gomister.com/file/cdn-common/teams/11.png?version=20231117",
        "Mallorca": "https://cdn.gomister.com/file/cdn-common/teams/408.png?version=20231117",
        "Rayo Vallecano": "https://cdn.gomister.com/file/cdn-common/teams/14.png?version=20231117",
        "Barcelona": "https://cdn.gomister.com/file/cdn-common/teams/3.png?version=20231117",
        "Celta de Vigo": "https://cdn.gomister.com/file/cdn-common/teams/5.png?version=20231117",
        "Cádiz": "https://cdn.gomister.com/file/cdn-common/teams/499.png?version=20231117",
        "Alavés": "https://cdn.gomister.com/file/cdn-common/teams/48.png?version=20231117",
        "Almería": "https://cdn.gomister.com/file/cdn-common/teams/21.png?version=20231117",
        "Sevilla": "https://cdn.gomister.com/file/cdn-common/teams/17.png?version=20231117",
        "Betis": "https://cdn.gomister.com/file/cdn-common/teams/4.png?version=20231117",
        }


def obtener_valor_por_etiqueta(label_deseado):
    # Función para obtener el valor basado en la etiqueta
    elemento = driver.find_element(By.XPATH, f"//div[@class='item']//div[@class='label' and text()='{label_deseado}']/following-sibling::div[@class='value']")
    valor = elemento.text
    return valor

def extraer_info_jugador():

    stadisticas_player = {}

    #NOMBRE JUGADOR
    try:
        nombre = driver.find_element(By.XPATH, "/html/body/div[6]/div[3]/div[2]/div[1]/div/div[1]/div[2]")
        apellido = driver.find_element(By.XPATH, " /html/body/div[6]/div[3]/div[2]/div[1]/div/div[1]/div[3]")
    except (StaleElementReferenceException, ElementNotInteractableException, ElementClickInterceptedException, NoSuchElementException) as e:
        driver.refresh()
        time.sleep(3)
        # Encontrar el elemento padre con la clase "left"
        elemento_padre = driver.find_element(By.CLASS_NAME, "left")
        
        # Encontrar los elementos hijos dentro del elemento padre
        nombre = elemento_padre.find_element(By.CLASS_NAME, "name")
        apellido = elemento_padre.find_element(By.CLASS_NAME, "surname")
    
    #VALOR JUGADOR
    try:
        valorS= driver.find_element(By.XPATH,'/html/body/div[6]/div[3]/div[2]/div[2]/div/div/div[1]/div[2]')  
    except (StaleElementReferenceException, ElementNotInteractableException, ElementClickInterceptedException, NoSuchElementException) as e:
        driver.refresh()
        time.sleep(3)
        # Encontrar el elemento padre con la clase "label-value-scroll"
        elemento_padre = driver.find_element(By.CLASS_NAME, "label-value-scroll")
        
        # Encontrar el elemento hijo con la clase "label" que contiene "Valor"
        label_valor = elemento_padre.find_element(By.XPATH, "//div[contains(@class, 'label') and contains(text(), 'Valor')]")
        
        # Desde el elemento padre, navegar al siguiente elemento hermano que contiene el valor
        valor = label_valor.find_element(By.XPATH, "./following-sibling::div[@class='value']")
    valor=valorS.text

    try:
        edad = obtener_valor_por_etiqueta("Edad")
        altura = obtener_valor_por_etiqueta("Altura")
        peso = obtener_valor_por_etiqueta("Peso")
    except:
        edad = None
        altura = None
        peso = None
                
    if peso == "kg":
        peso = None

            
    #### OBTENER EQUIPO JUGADOR ####

    # Obtener src del equipo
    team_logo_element = driver.find_element(By.XPATH, "/html/body/div[6]/div[3]/div[2]/div[1]/div/div[1]/div[1]/a/img")
    image_url = team_logo_element.get_attribute("src")

    # Comparar la URL de la imagen con las URLs en teams_data
    equipo = None
    for equipo_nombre, equipo_url in teams_data.items():
        if image_url == equipo_url:
            equipo = equipo_nombre
                
    #### OBTENER POSICIÓN DEL JUGADOR ####
    elemento = driver.find_element(By.XPATH, '//i[contains(@class, "pos-")]')
    # Obtener el valor del atributo class
    clases = elemento.get_attribute("class").split()

    # Determinar la posición
    posicion = None
    for clase in clases:
        if clase.startswith("pos-") and "pos-big" in clases:
            if clase == "pos-1":
                posicion = "PT"
            elif clase == "pos-2":
                posicion = "DF"
            elif clase == "pos-3":
                posicion = "MC"
            elif clase == "pos-4":
                posicion = "DL"
            break

    # EQUIPO PROPIETARIO DEL JUGADOR 
    owner=""  
    try:
        # Intentar encontrar el elemento
        elemento_box_owner = driver.find_element(By.CSS_SELECTOR, "div.box.box-owner")
        
        # Buscar la etiqueta <strong> dentro del elemento
        owner = elemento_box_owner.find_element(By.XPATH, "./p/strong").text
    
    except (StaleElementReferenceException, ElementNotInteractableException, ElementClickInterceptedException, NoSuchElementException) as e:
        print("El jugador no está en propiedad de ningún equipo.")

    #### IMPRIMIR TODOS LOS DATOS ####
    print("_____________________________________________")
    print(f"-{index+1}. {nombre.text}, {apellido.text}")
    print(f"Valor: {valor}")
    print(f"Posición: {posicion}")
    print(f"Equipo: {equipo}")
    print(f"Propietario MF: {owner}")
    print("- - - - - - - - - - - - - - - - - - - - - - - - - -")
    print(f"Edad: {edad}")
    print(f"Altura: {altura}")
    print(f"Peso: {peso}")
    for clave, valor in stadisticas_player.items():
        print(f"{clave}: {valor}")
    print("_____________________________________________")
    
    #Obtener Fk del equipo al que pertenecen las estadísticas con el nombre
    # Buscar el ID asociado al nombre
    id_asociado = None
    for elemento in array_clave_valor:
        if elemento["nombre"] == owner:
            id_asociado = elemento["id"]
            break

    if id_asociado is not None:
        print(f"El ID de '{owner}' es: {id_asociado}")
    else:
        print(f"No se encontró ningún ID asociado al nombre '{owner}'")

    #Preprocesar datos antes de insertar los datos en la bd
    nombre_completo = (nombre.text + " " + apellido.text).strip()

    if altura is not None:
        altura=altura.replace(',', '.')
        altura=altura.replace('m', '')
    if peso is not None:
        peso=peso.replace('kg', '')

    # Insertar datos en la tabla
    cursor = conexion.cursor()

    query = "INSERT INTO jugadores (id_equipo, nombre, posicion, equipo, edad, altura, peso, created_at, updated_at) VALUES (%s, %s, %s, %s, %s, %s, %s,NOW(), NOW())"
    valores = (id_asociado, nombre_completo, posicion, equipo, edad, altura, peso)

    try:
        cursor.execute(query, valores)
        conexion.commit()
        print("Datos insertados correctamente.")
    except Exception as e:
        print("Error al insertar datos:", e)


def actualizar_version(version):
      for equipo, url in teams_data.items():
        # Dividir la URL en base al signo de interrogación
        partes = url.split('?')
        
        # Verificar si hay una parte después del signo de interrogación y actualizar la versión
        if len(partes) > 1:
            partes[1] = f"version={version}"
            
            # Volver a unir las partes para formar la URL actualizada
            nueva_url = '?'.join(partes)
            
            # Actualizar la URL en el diccionario
            teams_data[equipo] = nueva_url


print("Starting scraper...")

# CONEXIÓN A LA BD
print("Conecting to database...")
conexion = mysql.connector.connect(
    host="localhost",
    user="root",
    password="12345",
    database="draftgeniousiq2"
)

# Crear un cursor para ejecutar consultas SQL
try:
    cursor = conexion.cursor()
    print("Conexión a la base de datos exitosa")
except:
    print("No se puedo conectar a la base de datos")

# ONTENER IDS DE LOS EQUIPOS DE LA LIGA FANTASY EN LA BD 
print("Obteniendo ids de los equipos en la base de datos:")
# Consulta SQL para seleccionar id_equipo y nombre de la tabla equipos
consulta = "SELECT id_equipo, nombre FROM equipos"

# Ejecutar la consulta
cursor.execute(consulta)

# Obtener los resultados
resultados = cursor.fetchall()

# Construir un array de pares clave-valor
array_clave_valor = []
for fila in resultados:
    id_equipo, nombre = fila
    array_clave_valor.append({"id": id_equipo, "nombre": nombre})

# Imprimir el array resultado
print(array_clave_valor)

cursor.close() 

print(f"Jornada seleccionada: {jornada_a_scrapear}")

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
        button = driver.find_element(By.XPATH, '//*[@id="content"]/header/div[2]/ul/li[5]/a')
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
    
print("Btn Home pulsado")

while True:
    try:
        print("try1")
        button = driver.find_element(By.CSS_SELECTOR, 'button[data-sw="players"]')                 
        time.sleep(0.5)
        button.click()

        print("Anuncio esquivado p2")
        break

    except (StaleElementReferenceException, ElementNotInteractableException, ElementClickInterceptedException, NoSuchElementException) as e:

        #Mostrar error por interfaz
        print("\nAnuncio detectado, reiniciando driver... (2)")
        print("try2: Refresh()")
        #Refrescar página
        driver.refresh()
        time.sleep(3)

        # Al reiniciar el driver este vuelve a la ventana home y hay que volver a pulsar en "Más"
        button = driver.find_element(By.XPATH, '//*[@id="content"]/header/div[2]/ul/li[5]/a')
        time.sleep(0.5)
        button.click()
        time.sleep(3)
    
print("Btn Jugadores pulsado")

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
        print(".......................................")
        print("Accediendo siguiente jugador x", index)
        print(".......................................")

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
        # El valor de version está en la segunda parte después del =
        version = parts[1]
        actualizar_version(version)
            
        if absolute == 1:
            # Encontrar jornada 
            elementos_principales = driver.find_elements(By.CLASS_NAME, 'btn-player-gw')

            # Iterar sobre cada elemento encontrado
            subelemento_gw=None
            for elemento_principal in elementos_principales:
                # Encontrar subelemento con la clase 'gw' dentro de cada elemento principal
                subelemento_gw = elemento_principal.find_element(By.CLASS_NAME, 'gw')
                    
                # Verificar si el texto coincide con el de la jornada
                if subelemento_gw.text == jornada_a_scrapear:
                    jornada_absolute = subelemento_gw.text
                    break   
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

    # Vuelvo a entrar en el último jugador para que se actualice la pagina de jugaodres con la siguiente página
    elementos_lis = driver.find_elements(By.CSS_SELECTOR, "div.player-row")
    print(len(elementos_li))
    elementos_li[index-1].click()
    time.sleep(1)
    driver.back()
        
    print("____________________________________")
    print("------------------------------------")
    print(f"Siguiente página... ({pag})")
    print("------------------------------------")
        
    index=0
    pag+=1

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
    print(f"BUscando a {jugador}")
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
#Cerrar conexión a la bd y driver
driver.quit()
conexion.close()   