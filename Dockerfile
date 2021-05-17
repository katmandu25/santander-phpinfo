# Descargamos un ss.oo
FROM alpine:latest
# Instalamos PHP
RUN apk add php
#Primero creamos la carpeta en el contenedor
WORKDIR /app
# Copiamos el contenido del directorio src a app
COPY src . 
ENTRYPOINT ["php"]
CMD ["-f", "index.php", "-S", "0.0.0.0:8080"]
