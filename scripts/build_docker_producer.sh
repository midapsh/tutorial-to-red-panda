#!/bin/bash
# -f: Nome do arquivo Dockerfile
# -t: Adiciona tag para a imagem
# "src": o contexto(pasta) em que a imagem
# sera 'buildada'
pushd src/producer
source build.sh
popd
docker build \
    -f docker/producer/Dockerfile \
    -t hspadim/red-panda-producer \
    src
