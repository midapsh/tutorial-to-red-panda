#!/bin/bash
docker exec -it redpanda-1 \
rpk topic list --brokers=localhost:9092
