//src/index.ts
import * as Producer from './producer';

function delay(time: number) {
    return new Promise(resolve => setTimeout(resolve, time));
}

function start() {
    console.log('connecting...')
    Producer.getConnection("Kleber").then(async (sendMessage) => {
        console.log('connected, press Ctrl+C to exit')
        let count = 0;
        while (true) {
            await sendMessage(`${count++}`);
            await delay(100);
        }
    })
}

start();
// handling shut down

process.on('SIGINT', process.exit);

process.on('exit', () => {
    Producer.disconnect();
});