#!/bin/bash

# Define la URL del portal de noticias
url="https://elpais.com/"

# Utiliza wget para descargar el código fuente de la página
wget -q -O - "$url" > elpais_source.html

# Busca patrones que podrían indicar titulares. Este es un ejemplo básico;
# necesitarás ajustar los patrones de búsqueda según lo que encuentres en el sitio.
# Este comando busca ejemplos de etiquetas <h1>, <h2>, y <a> que podrían contener titulares.
grep -oP '(<h1[^>]*>.*?</h1>|<h2[^>]*>.*?</h2>|<a[^>]*class="[^"]*titulo[^"]*"[^>]*>.*?</a>)' elpais_source.html > headlines.txt

# Muestra los resultados
cat headlines.txt