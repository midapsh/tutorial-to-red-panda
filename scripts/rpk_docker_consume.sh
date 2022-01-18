#!/bin/bash
docker exec -it redpanda-1 \
rpk topic consume chat-room --brokers=localhost:9092