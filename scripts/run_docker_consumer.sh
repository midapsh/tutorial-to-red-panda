#!/bin/bash
# -f: Nome do arquivo Dockerfile
# -t: Adiona tag para a imagem
# ".": o contexto(pasta) em que a imagem
# sera 'buildada'
docker run -d hspadim/red-panda-consumer
