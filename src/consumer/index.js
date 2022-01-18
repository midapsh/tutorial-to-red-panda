"use strict";
var __importStar = (this && this.__importStar) || function (mod) {
    if (mod && mod.__esModule) return mod;
    var result = {};
    if (mod != null) for (var k in mod) if (Object.hasOwnProperty.call(mod, k)) result[k] = mod[k];
    result["default"] = mod;
    return result;
};
Object.defineProperty(exports, "__esModule", { value: true });
//src/index.ts
var Consumer = __importStar(require("./consumer"));
function start() {
    console.log('connecting...');
    Consumer.connect().then(function () { });
}
start();
// handling shut down
process.on('SIGINT', process.exit);
process.on('exit', function () {
    Consumer.disconnect();
});
