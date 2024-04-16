# SCRAPER DE ESTADÍSTICAS DE LOS EQUIPO PARTICIPANTES EN LA LIGA MISTER FANTASY
#   1-Nos logueamos en la web de MF
#   2-Accedemos al subapartado Tabla donde se encuentra la clasificación de todos los equipos
#   3-Accedemos a cada uno de los equipos y accedemos a las diferentes estadísticas de: puntos totales obtenidos, dinero total disponible,
#     media_puntos_jornada, valor de la plantilla, numero de jugadores en plantilla, jugadores en plantilla y jugadores titulares.
#   4-Además inicializa datos como id_equipo asociado, fecha de creación y actualización.

# Dependencias
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.common.exceptions import StaleElementReferenceException, ElementNotInteractableException, ElementClickInterceptedException, NoSuchElementException
import time
import mysql.connector
from bs4 import BeautifulSoup

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

###ACTUALIZAR EN LA BD LOS JUGADORES  TITULARES / NO TITULARES  DE LA PLANTILLA DEL USER

## 1-Inicializamos todos los jugadores de todos los equipos a 0(no titulares)

# Crear un cursor para ejecutar consultas SQL
cursor = conexion.cursor()

try:
    # Consulta SQL para actualizar todos los valores de la columna titular a 0
    consulta = "UPDATE jugadores SET titular = NULL;"

    # Ejecutar la consulta
    cursor.execute(consulta)

    # Confirmar la transacción
    conexion.commit()

    print("Se han actualizado todos los jugadores a suplentes(0) correctamente.")
except mysql.connector.Error as error:
    print(f"No se ha podido ejecutar la consulta: {error}")


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

#OBTENER DINERO DISPONIBLE DEL USUARIO
# Encuentra el div con la clase "header-top-right"
header_top_right_div = driver.find_element(By.CLASS_NAME, "header-top-right")
# Dentro de ese div, encuentra el botón con la clase "btn-balance"
balance_button = header_top_right_div.find_element(By.CLASS_NAME, "btn-balance")
#Clickamos sobre el elemento dinero
balance_button.click()
time.sleep(2)

# Encuentra el elemento <div> con la clase "amount "
div_element = driver.find_element(By.XPATH,"/html/body/div[6]/div[3]/div/div/div")

# Extrae el texto del elemento
money = div_element.text
print("money available: ",money,"€")
money=money.replace('.', '')
time.sleep(2)
driver.back()
time.sleep(2)

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
        time.sleep(4)
    
print("Btn Tabla pulsado")

time.sleep(5)
index=0
while True:
    user_rows = driver.find_elements(By.CSS_SELECTOR, "li[class='']")                           

    print("Número de equipos encontrados:",index,"--" ,len(user_rows))
    
    if len(user_rows) != 0:
        # Iterar sobre los elementos y hacer clic en cada uno
        for user_row in user_rows:
            try:
                user_row.click()
            except (StaleElementReferenceException, ElementNotInteractableException, ElementClickInterceptedException, NoSuchElementException) as e:
                user_rows = driver.find_elements(By.XPATH, '//*[@id="inner-content"]/div[1]/div[2]/div[2]/ul/li')
                time.sleep(1)
                user_row.click()

            time.sleep(4)

            #Nombre EQUIPO
            nameEquipo = driver.find_element(By.XPATH, "/html/body/div[6]/div[3]/div[1]/div[2]/div[2]/div")
            nombreEquipo=nameEquipo.text
            #ESTADÍSTICAS DEL EQUIPO
            div_wrapper = driver.find_element(By.XPATH, "//div[@class='wrapper items thin-scrollbar']")
            # Encontrar todos los elementos <div class="value"> dentro del div encontrado
            div_values = div_wrapper.find_elements(By.XPATH, ".//div[@class='value']")

            # Iterar sobre los elementos <div class="value"> y extraer su texto
            print("Estadísticas del equipo:", nombreEquipo)
            for div_value in div_values:
                print(div_value.text)
            
            #Procesar datos
            puntos=div_values[0].text.replace('.', '')
            media_puntos_jornada=div_values[1].text.replace(',', '.')
            valor_team=div_values[2].text.replace(',', '.')
            valor_team=valor_team.replace('M', '')
            num_jugadors=div_values[3].text

            # JUGADORES TITULARES DEL EQUIPO
            titulares = []
            
            # Obtiene el HTML de la página
            html = driver.page_source

            # Analiza el HTML con Beautiful Soup
            soup = BeautifulSoup(html, 'html.parser')

            # Encuentra el div con la clase "lineup-starting"
            lineup_div = soup.find('div', class_='lineup-starting')

            if lineup_div:
                # Encuentra todos los elementos <a> dentro del div
                player_links = lineup_div.find_all('a', class_='lineup-player')

                # Itera sobre cada elemento <a>
                for link in player_links:
                    # Encuentra el div con la clase "name" dentro del elemento <a>
                    player_name_div = link.find('div', class_='name')
                    
                    # Verifica si se encontró el div del nombre
                    if player_name_div:
                        # Extrae el nombre del jugador
                        player_name = player_name_div.text.strip()
                        print(player_name)
                        titulares.append(player_name)

            print("Total de TITULARES:",len(titulares))
            print(titulares)
            

            # JUGADORES TODOS LOS JUGADORES
            jugadores_equipo = []
            #Cambiar a la subventana equipo
            button = driver.find_element(By.XPATH, '/html/body/div[6]/div[3]/div[3]/div/div[2]/button')
            button.click()

            # Encontrar todos los elementos con la clase "player-row"
            player_rows = driver.find_elements(By.XPATH,'//div[@class="player-row"]')
            print("Número de jugadores TOTALES del equipo: ", len(player_rows))

            for index in range(len(player_rows)):
                time.sleep(1) 
                player_rows = driver.find_elements(By.XPATH,'//div[@class="player-row"]')
                player_rows[index].click()
                time.sleep(1)
                name = driver.find_element(By.XPATH,'/html/body/div[6]/div[3]/div[2]/div[1]/div/div[1]/div[2]')
                surname = driver.find_element(By.XPATH,'/html/body/div[6]/div[3]/div[2]/div[1]/div/div[1]/div[3]')
                jugador= name.text + " " +surname.text
                jugadores_equipo.append(jugador)
                print(index, jugador)
                driver.back()
                time.sleep(2)  
                player_rows = driver.find_elements(By.XPATH,'//div[@class="player-row"]')
                driver.execute_script("arguments[0].scrollIntoView(true);", player_rows[index])  
            
            #Actualizar array de jugadores titulares con nombres completos de cada jugaodr para poder buscar por nombre en la tabla jugadores y asignar atributo titular a 1
            mapa_nombres = {jugador.split()[0][0] + '. ' + jugador.split()[-1]: jugador for jugador in jugadores_equipo}
            titulares_actualizados = [mapa_nombres.get(nombre, nombre) for nombre in titulares]
            print(titulares_actualizados)

            #Obtener Fk del equipo al que pertenecen las estadísticas con el nombre
            # Buscar el ID asociado al nombre
            id_asociado = None
            for elemento in array_clave_valor:
                if elemento["nombre"] == nombreEquipo:
                    id_asociado = elemento["id"]
                    break
            
            if id_asociado is not None:
                print(f"El ID de '{nombreEquipo}' es: {id_asociado}")
            else:   
                print(f"No se encontró ningún ID asociado al nombre '{nombreEquipo}'")

            ###ACTUALIZAR EN LA BD LOS JUGADORES  TITULARES / NO TITULARES  DE LA PLANTILLA DEL USER

            ## 2 Inicializamos todos los jugadores TITULARES de la plantilla del equipo a 1(titulares)
            print("titulares a actualizar:", titulares_actualizados)
            for titular in titulares_actualizados:
                time.sleep(1)
                # Consulta SQL para actualizar el atributo titular a 1 del jugador 
                consulta = f"UPDATE jugadores SET titular = 1 WHERE nombre = '{titular}';"

                try:
                    # Ejecutar la consulta
                    cursor.execute(consulta)

                    # Confirmar la transacción
                    conexion.commit()
                    print("Se ha actualizado a ",titular," como tiular(1) correctamente.")
                except mysql.connector.Error as error:
                    print(f"No se ha podido ejecutar la consulta: {error}")

            #El dinero del resto de usuarios no es accesible, por lo que lo inicializamos a 0
            if id_asociado !=2:
                moneyI=None
            else:
                moneyI=money
            
            # Consulta SQL para insertar datos en una tabla llamada 'datos'
            consulta = "INSERT INTO estadisticas_equipos (id_equipo, puntos, money, media_puntos_jornada, valor, num_jugadores, created_at, updated_at) VALUES (%s, %s, %s, %s, %s, %s, NOW(), NOW())"
            
            # Ejecutar la consulta
            try:
                cursor.execute(consulta, (id_asociado, puntos,moneyI, media_puntos_jornada, valor_team, num_jugadors))
                conexion.commit()  # Confirmar la transacción
                print(f"Datos insertados correctamente en la BD.")
            except mysql.connector.Error as err:
                print(f"Error al insertar datos en la BD: {err}")
            
            print("Equipo scrapeado completo.")
            driver.back() 

        cursor.close()
        conexion.close()
        driver.quit()   
        print("Todos los equipos scrapeados")
        break

    driver.refresh()
    time.sleep(4)
    button = driver.find_element(By.XPATH, '//*[@id="content"]/header/div[2]/ul/li[4]/a')
    time.sleep(2)
    button.click()
    index+=1