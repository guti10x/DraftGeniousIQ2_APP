# Dependencias
from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.common.exceptions import StaleElementReferenceException, ElementNotInteractableException, ElementClickInterceptedException, NoSuchElementException
import openpyxl
import time
import os

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
    valor=valorS.text

    media_puntos_local = obtener_valor_por_etiqueta("Media en casa")
    media_puntos_visitante = obtener_valor_por_etiqueta("Media fuera")
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
        

    #### IMPRIMIR TODOS LOS DATOS ####
    print("_____________________________________________")
    print(f"-{progress+1}. {nombre.text}, {apellido.text}")
    print(f"Valor: {valor}")
    print(f"Posición: {posicion}")
    print(f"Equipo: {equipo}")

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
    print(f"Edad: {edad}")
    print(f"Altura: {altura}")
    print(f"Peso: {peso}")
    for clave, valor in stadisticas_player.items():
        print(f"{clave}: {valor}")
    print("_____________________________________________")

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

#DEFINIR JORNADA A SCRAPEAR
jornada_a_scrapear = "J29"   #IMPORTANTE que la variable mantenga la J para luego buscar la jornada deseada
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
        elementos_li = driver.find_elements(By.CSS_SELECTOR, "div.player-row")
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
        ver_mas = driver.find_element(By.XPATH, '/html/body/div[7]/div[3]/div[3]/div[1]/button')
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

driver.quit()    
print("Todos los jugadores scrapeados")
