import { readIn } from '../func/readIn';
import { Kerdesek } from '../util/kerdesek';

let k = new Kerdesek("alma", "korte");


async function main() {
    const kerdesekPromise: Promise<Kerdesek[]> = readIn();
    let kerdesek: Kerdesek[] = await kerdesekPromise;
    let random = Math.floor(Math.random() * kerdesek.length);
    k = kerdesek[random];
}


export { k, main };