#!/bin/bash
# -f: Nome do arquivo Dockerfile
# -t: Adiciona tag para a imagem
# "private": o contexto(pasta) em que a imagem
# sera 'buildada'
pushd private/producer
source build.sh
popd
docker build \
    -f docker/producer/Dockerfile \
    -t hspadim/red-panda-producer \
    private
