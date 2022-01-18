// src/producer.ts
import { Kafka } from 'kafkajs';

const kafka = new Kafka({
    clientId: 'chat-app',
    brokers: ['redpanda:9092']
});

const producer = kafka.producer();

export function getConnection(user: string) {
    return producer.connect().then(() => {
        return (message: string) => {
            return producer.send({
                topic: 'chat-room', // the topic created before
                messages: [//we send the message and the user who sent it
                    { value: JSON.stringify({ message, user }) },
                ],
            })
        }
    })
}

export function disconnect() {
    return producer.disconnect()
}