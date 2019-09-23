let xi = 2;
let yi = 1;

const main = (x, y) => {
    let val = 1;
    for (let i = 1; i < x; i++) {
        val += xi;
        xi +=1;
        yi += 1;
    }
    for (let i = 1; i < y; i++) {
        val += yi;
        yi += 1
    }
    xi = 2
    yi = 1
    return val.toString();

}

console.log(main(2, 2));
console.log(main(2, 4));
console.log(main(4, 1));
console.log(main(4, 2));
console.log(main(100000, 100000));