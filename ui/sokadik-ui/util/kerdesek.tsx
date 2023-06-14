class Kerdesek {
    lineK: string;
    lineV: string;
    constructor(lineK: string, lineV: string) {
        this.lineK = lineK;
        this.lineV = lineV;
    }

    getKerdes(): string {
        return this.lineK;
    }

    getValasz(): string {
        return this.lineV;
    }

    toString(): string {
        return this.lineK + '\n' + this.lineV;
    }
}

export { Kerdesek };