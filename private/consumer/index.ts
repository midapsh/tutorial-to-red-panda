//src/index.ts
import * as Consumer from './consumer';

function start() {
    console.log('connecting...')
    Consumer.connect().then(() => { })
}

start();
// handling shut down

process.on('SIGINT', process.exit);

process.on('exit', () => {
    Consumer.disconnect();
});