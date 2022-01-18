#!/bin/bash
# -f: Nome do arquivo Dockerfile
# -t: Adiciona tag para a imagem
# "src": o contexto(pasta) em que a imagem
# sera 'buildada'
pushd src/consumer
source build.sh
popd
docker build \
    -f docker/consumer/Dockerfile \
    -t hspadim/red-panda-consumer \
    src
