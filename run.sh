#!/bin/bash
source scripts/build_docker_consumer.sh
source scripts/build_docker_producer.sh
docker-compose up -d --scale consumer=1