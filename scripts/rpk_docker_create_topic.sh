#!/bin/bash
docker exec -it redpanda-1 \
rpk topic create chat-room --brokers=localhost:9092
