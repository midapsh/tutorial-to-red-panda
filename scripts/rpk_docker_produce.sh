#!/bin/bash
docker exec -it redpanda-1 \
rpk topic produce chat-room --brokers=localhost:9092