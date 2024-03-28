# Dependencias
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
from selenium.common.exceptions import StaleElementReferenceException, ElementNotInteractableException, ElementClickInterceptedException, NoSuchElementException
import openpyxl
import time
import mysql.connector

#DEFINIR JORNADA A SCRAPEAR:
jornadaSC=29 
jornada_a_scrapear = "J" + str(jornadaSC)  #IMPORTANTE que la variable mantenga la J para luego buscar la jornada deseada


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

def extraer_info_jugador(jornada_absolute,jornada_a_scrapear):

    stadisticas_player = {}

    nombre = driver.find_element(By.XPATH, "/html/body/div[6]/div[3]/div[2]/div[1]/div/div[1]/div[2]")
    apellido = driver.find_element(By.XPATH, " /html/body/div[6]/div[3]/div[2]/div[1]/div/div[1]/div[3]")
    valorS= driver.find_element(By.XPATH,'/html/body/div[6]/div[3]/div[2]/div[2]/div/div/div[1]/div[2]')
    valorMercado=valorS.text                      

    media_puntos_local = obtener_valor_por_etiqueta("Media en casa")
    media_puntos_visitante = obtener_valor_por_etiqueta("Media fuera")
    
            
    #### OBTENER EQUIPO JUGADOR ####

    # Obtener src del equipo
    team_logo_element = driver.find_element(By.XPATH, "/html/body/div[6]/div[3]/div[2]/div[1]/div/div[1]/div[1]/a/img")
    image_url = team_logo_element.get_attribute("src")

    # Comparar la URL de la imagen con las URLs en teams_data
    equipo = None
    proximo_rival=None
    local= False
    for equipo_nombre, equipo_url in teams_data.items():
        if image_url == equipo_url:
            equipo = equipo_nombre
                
            #### OBTENER RESULTADO ÚLTIMO PARTIDO ####
            try:
                divpartido = driver.find_element(By.XPATH, "/html/body/div[6]/div[3]/div[3]/div[1]/div[3]/div")
            except:
                divpartido = driver.find_element(By.XPATH, "/html/body/div[6]/div[3]/div[3]/div/div[2]/div")
                
            # Encuentra el div del partido
            item_elements = divpartido.find_elements(By.CLASS_NAME, 'item')
            
            # Encuentra las imágenes dentro del div partido
            img_elements = item_elements[0].find_elements(By.CLASS_NAME, 'team-logo')

            # Guarda las src de las imágenes en variables
            if len(img_elements) >= 2:
                src_img1 = img_elements[0].get_attribute('src')
                src_img2 = img_elements[1].get_attribute('src')
                if src_img1 == image_url:
                    local = True
                    for equipo_nombre, equipo_url in teams_data.items():
                        if src_img2 == equipo_url:
                            proximo_rival=equipo_nombre
                else:
                    local=False
                    for equipo_nombre, equipo_url in teams_data.items():
                        if src_img1 == equipo_url:
                            proximo_rival=equipo_nombre
            else:
                print("No se encontró el próximo partido")
                
    #### OBTENER PUNTOS DEL JUGADOR ####
    # Encontrar jornada 
    elementos_principales = driver.find_elements(By.CLASS_NAME, 'btn-player-gw')

    # Iterar sobre cada elemento encontrado
    subelemento_gw=None
    jornada_name=None
    for elemento_principal in elementos_principales:
        # Encontrar subelemento con la clase 'gw' dentro de cada elemento principal
        subelemento_gw = elemento_principal.find_element(By.CLASS_NAME, 'gw')

        # Verificar si el texto coincide con el de la jornada
        if subelemento_gw.text == jornada_a_scrapear:
            jornada_name = subelemento_gw.text
            break         

    if jornada_name ==jornada_absolute:
        # Encontrar jornada en la web con otro elemennto como referencia
        localizador = driver.find_element(By.XPATH, "//h4[text()='Valor']")
        driver.execute_script("arguments[0].scrollIntoView(true);", localizador)   
            
        time.sleep(1)
            
        try:
            subelemento_gw.click()
        except:
            elemento_principal.click()
        
        time.sleep(2)
            
        try:
            # PUNTOS MISTER FANTASY
            main_provider = driver.find_element(By.CLASS_NAME, 'main-provider')
            points_element = main_provider.find_element(By.CLASS_NAME, 'points')
            final_points = points_element.get_attribute('data-points')

            # PUNTOS AS, MARCA Y MUNDO DEPORTIVO 
            providers_div = driver.find_element(By.CLASS_NAME, "providers")
            li_elements = providers_div.find_elements(By.TAG_NAME, "li")

            points_array = []

            for li_element in li_elements:

                points_div = li_element.find_element(By.CLASS_NAME, "points")
                points_value = points_div.text
                points_array.append(points_value)

            as_points=points_array[0]
            marca_points=points_array[1]
            mundo_deportivo_points=points_array[2]
                
            #### OBTENER PARTIDO ANTERIOR ####
            # Encontrar el div principal con la clase "player-match"
            player_match_div = driver.find_element(By.CLASS_NAME, "player-match")

            # Encontrar los subelementos dentro del div principal
            team_1 = player_match_div.find_element(By.CLASS_NAME, "left").find_element(By.CLASS_NAME, "team").text
            goals_team_1 = [int(goal.text) for goal in player_match_div.find_elements(By.CLASS_NAME, "goals")][0]  
            goals_team_2 = [int(goal.text) for goal in player_match_div.find_elements(By.CLASS_NAME, "goals")][1]  
            team_2 = player_match_div.find_element(By.CLASS_NAME, "right").find_element(By.CLASS_NAME, "team").text

            if team_1 == equipo:
                ultimo_rival=team_2

                if goals_team_1 > goals_team_2:
                    result = "Win"
                elif goals_team_1 < goals_team_2:  
                    result = "Loss"
                else:
                    result = "Draw"
            else:
                ultimo_rival=team_1

                if goals_team_1 > goals_team_2:
                    result = "Loss"
                elif goals_team_1 < goals_team_2:  
                    result = "Win"
                else:
                    result = "Draw"

            #driver.back()
            #### OBTENER ESTADÍSTICAS DEL PARTIDO DEL JUGADOR DE LA JORNADA ####
            btn_estats = driver.find_element(By.XPATH, '//*[@id="popup-content"]/div[4]/div/button')   
            btn_estats.click()

            # Encontrar todas las etiquetas <tr> dentro de la tabla
            filas = driver.find_elements(By.XPATH, "//div[@class='content player-breakdown']//table//tr")
            # Iterar sobre cada fila (<tr>)
            for fila in filas:
                # Encontrar las etiquetas <td> dentro de la fila
                celdas = fila.find_elements(By.TAG_NAME, "td")
                    
                # Extraer el texto de cada celda y almacenarlo en el diccionario
                clave = celdas[0].text.strip()
                valor = celdas[1].text.strip()
                stadisticas_player[clave] = valor

            time.sleep(1)
                
        except:
            final_points=None
            as_points=None
            marca_points=None
            mundo_deportivo_points=None
            ultimo_rival=None
            result=None
                
    else:
        final_points="NA"
        as_points="NA"
        marca_points="NA"
        mundo_deportivo_points="NA"
        ultimo_rival="NA"
        result="NA"

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
    print(f"-{progress+1}. {nombre.text} {apellido.text}")
    print(f"Valor mercado: {valorMercado}")
    print(f"Equipo: {equipo}")
    print(f"Propietario MF: {owner}")

    print("- - - - - - - - - - - - - - - - - - - - - - - - - -")

    print(f"Puntuación Fantasy: {final_points}")
    print(f"Puntuación Fantasy: {as_points}")
    print(f"Puntuación Marca: {marca_points}")
    print(f"Puntuación Mundo Deportivo: {mundo_deportivo_points}")

    print("- - - - - - - - - - - - - - - - - - - - - - - - - -")

    print(f"Último rival: {ultimo_rival}")
    print(f"Resultado del partido: {result}")

    print(f"Próximo rival: {proximo_rival}")
    print(f"Próximo partido es local: {local}")
    print(f"Media en casa: {media_puntos_local}")
    print(f"Media fuera: {media_puntos_visitante}")
    for clave, valor in stadisticas_player.items():
        print(f"{clave}: {valor}")
        array_estadisticas_bd.add(clave)

    print("_____________________________________________")

    #Obtener Fk del equipo al que pertenecen las estadísticas con el nombre
    nombre_completo= nombre.text + " " + apellido.text
    id_jugador=0

    # Buscar el nombre en el diccionario
    if nombre_completo in array_clave_valor.values():
        # Obtener la clave (ID del jugador) asociada al nombre
        id_jugador = next(key for key, value in array_clave_valor.items() if value == nombre_completo)
        print(f"El ID del jugador '{nombre_completo}' es: {id_jugador}")
    else:
        print(f"No se encontró el nombre '{nombre_completo}' en la base de datos.")


    #Preprocesamiento de datos antes de insertar en la BD
    # Reemplazar comas por puntos en las variables
    valorMercado = valorMercado.replace(".", "")
    media_puntos_local = media_puntos_local.replace(",", ".")
    media_puntos_visitante = media_puntos_visitante.replace(",", ".")
    # Verificar si goles_esperados es None antes de intentar reemplazar comas
    goles_esperados = stadisticas_player.get("Goles esperados")
    if goles_esperados is not None:
        goles_esperados = goles_esperados.replace(",", ".")
    
     # Verificar si goles_esperados es None antes de intentar reemplazar comas
    goles_evitados = stadisticas_player.get("goles evitados")
    if goles_evitados is not None:
        goles_evitados = goles_evitados.replace(",", ".")

    # Verificar si asistencias_esperadas es None antes de intentar reemplazar comas
    asistencias_esperadas = stadisticas_player.get("MATCH_STAT_expectedAssists")
    if asistencias_esperadas is not None:
        asistencias_esperadas = asistencias_esperadas.replace(",", ".")


    # REALIZAR INSERT DE DATOS DE ESTADÍSTICAS INDIVIDUALES DE CADA JUGADOR A LA BD
    # Crea un cursor para ejecutar consultas SQL
    cursor = conexion.cursor()

    # Define la consulta SQL de inserción
    sql = """
        INSERT INTO estadisticas_jornadas (
            id_player,
            jornada,
            timestamp,
            puntuacion_fantasy,
            puntuacion_as,
            puntuacion_marca,
            puntuacion_mundo_deportivo,
            media_puntos_local,
            media_puntos_visitante,
            valor_mercado,
            ultimo_rival,
            resultado_del_partido,
            proximo_rival,
            proximo_partido_es_local,
            balones_en_largo_totales,
            tiros_bloqueados_en_defensa,
            ocasiones_claras_falladas,
            entradas_como_último_hombre,
            goles_evitados,
            salidas_precisas,
            minutos_jugados,
            goles_esperados,
            balones_en_largo_precisos,
            intercepciones,
            tiros_fuera,
            tiros_bloqueados_en_ataque,
            posesiones_perdidas,
            paradas_desde_dentro_del_área,
            centros_totales,
            entradas_totales,
            despejes_por_alto,
            duelos_aéreos_perdidos,
            duelos_ganados,
            pases_totales,
            penaltis_cometidos,
            asistencias_esperadas,
            pérdidas,
            regates_totales,
            penaltis_provocados,
            despejes_con_los_puños,
            goles,
            asistencias_de_gol,
            tiros_al_palo,
            regates_completados,
            ocasiones_creadas,
            penaltis_fallados,
            pases_clave,
            tiros_a_puerta,
            fueras_de_juego,
            centros_precisos,
            errores_que_llevan_a_disparo,
            despejes_totales,
            duelos_aéreos_ganados,
            paradas,
            pases_precisos,
            toques,
            duelos_perdidos,
            faltas_recibidas,
            errores_que_llevan_a_gol,
            salidas_totales,
            penaltis_parados,
            regateado,
            faltas_cometidas

        ) VALUES (
                %s, %s, NOW(), %s, %s, %s, %s, %s, %s, %s,
                %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, 
                %s, %s, %s, %s, %s, %s, %s, %s, %s, %s, 
                %s, %s, %s, %s, %s, %s, %s, %s, %s, %s,
                %s, %s, %s, %s, %s, %s, %s, %s, %s, %s,
                %s, %s, %s, %s, %s, %s, %s, %s, %s, %s,
                %s, %s, %s
            )
    """

    # Define los valores a insertar (reemplaza estos valores con los datos reales)
    datos_jornada = (
        id_jugador,
        jornadaSC,
        final_points,
        as_points,
        marca_points,
        mundo_deportivo_points,
        media_puntos_local,
        media_puntos_visitante,
        valorMercado,
        ultimo_rival,
        result,
        proximo_rival,
        local,
        stadisticas_player.get("Balones en largo totales"),
        stadisticas_player.get("Tiros bloqueados en defensa"),
        stadisticas_player.get("Ocasiones claras falladas"),
        stadisticas_player.get("Entradas como último hombre"),
        goles_evitados,
        stadisticas_player.get("Salidas precisas"),
        stadisticas_player.get("Minutos jugados"),
        goles_esperados,
        stadisticas_player.get("Balones en largo precisos"),
        stadisticas_player.get("Intercepciones"),
        stadisticas_player.get("Tiros fuera"),
        stadisticas_player.get("Tiros bloqueados en ataque"),
        stadisticas_player.get("Posesiones perdidas"),
        stadisticas_player.get("Paradas desde dentro del área"),
        stadisticas_player.get("Centros totales"),
        stadisticas_player.get("Entradas totales"),
        stadisticas_player.get("Despejes por alto"),
        stadisticas_player.get("Duelos aéreos perdidos"),
        stadisticas_player.get("Duelos ganados"),
        stadisticas_player.get("Pases totales"),
        stadisticas_player.get("Penaltis cometidos"),
        asistencias_esperadas,
        stadisticas_player.get("Pérdidas"),
        stadisticas_player.get("Regates totales"),
        stadisticas_player.get("Penaltis provocados"),
        stadisticas_player.get("Despejes con los puños"),
        stadisticas_player.get("Goles"),
        stadisticas_player.get("Asistencias de gol"),
        stadisticas_player.get("Tiros al palo"),
        stadisticas_player.get("Regates completados"),
        stadisticas_player.get("Ocasiones creadas"),
        stadisticas_player.get("Penaltis fallados"),
        stadisticas_player.get("Pases clave"),
        stadisticas_player.get("Tiros a puerta"),
        stadisticas_player.get("Fueras de juego"),
        stadisticas_player.get("Centros precisos"),
        stadisticas_player.get("Errores que llevan a disparo"),
        stadisticas_player.get("Despejes totales"),
        stadisticas_player.get("Duelos aéreos ganados"),
        stadisticas_player.get("Paradas"),
        stadisticas_player.get("Pases precisos"),
        stadisticas_player.get("Toques"),
        stadisticas_player.get("Duelos perdidos"),
        stadisticas_player.get("Faltas recibidas"),
        stadisticas_player.get("Errores que llevan a gol"),
        stadisticas_player.get("Salidas totales"),
        stadisticas_player.get("Penaltis parados"),
        stadisticas_player.get("Regateado"),
        stadisticas_player.get("Faltas cometidas")
    )

    try:
        # Ejecutar la consulta INSERT con los valores proporcionados
        cursor.execute(sql, datos_jornada)

        # Confirmar la transacción
        conexion.commit()

        print("Datos insertados correctamente.")

    except mysql.connector.Error as error:
        print("Error al conectar con la base de datos:", error)
    
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
print("Obteniendo ids de los jugadores en la base de datos:")

# Crear un cursor para ejecutar consultas SQL
cursor = conexion.cursor()

# Ejecutar la consulta para obtener los IDs y nombres de los jugadores
consulta = "SELECT id_player, nombre FROM jugadores"
cursor.execute(consulta)

# Obtener los resultados y almacenarlos en un diccionario
array_clave_valor = {}
for (id_player, nombre) in cursor:
    array_clave_valor[id_player] = nombre

# Imprimir el diccionario resultante
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
array_estadisticas_bd= []
array_estadisticas_bd = set()

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
        except:                                                     
            try:
                team_logo_element = driver.find_element(By.XPATH, "/html/body/div[7]/div[3]/div[3]/div[1]/div[3]/div/div[1]/div[2]/img[1]")
            except:                                                     
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
        
        extraer_info_jugador(jornada_absolute,jornada_a_scrapear)
            
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
    except:
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


print("Resumen de todas las estadísticas encontradas de todos los jugadores:")
print(array_estadisticas_bd)

print("Scraping finalizado")
print(array_estadisticas_bd)

#Cerrar conexión a la bd y driver
driver.quit()
conexion.close()