FROM node:latest
LABEL "MAINTAINER"="Henrique Spadim"
# Copy current folder (".") to image
# folder ("/var/www")
COPY . /var/www
# Escolhendo a pasta principal/de entrada
# do container
WORKDIR /var/www
# Instalar dependencias do node
RUN npm install
# Adicionar script de entrada da imagem
ENTRYPOINT ["node", "producer/index.js"]
# CMD ["/bin/sh", "-c", "bash"]
