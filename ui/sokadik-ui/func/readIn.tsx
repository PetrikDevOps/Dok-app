import { Kerdesek } from '../util/kerdesek';

// readIn.tsx
export async function readIn(): Promise<Kerdesek[]> {
    let kerdesek: Kerdesek[] = [];
    try {
        const response = await fetch('http://localhost:8000/bank.txt');
        const data = await response.text();

        let lines = data.split('\n');
        for (let i = 0; i < lines.length; i += 2) {
            kerdesek.push(new Kerdesek(lines[i], lines[i + 1]));
        }

        return kerdesek;
    } catch (error) {
        return kerdesek;
    }
}
