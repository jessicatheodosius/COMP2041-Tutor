const nums = [0,1,2,3,undefined,4,5,6,undefined,7];
const only_defined_nums = nums.filter(r => r);

// console.log(`0 is false? ${0 == false}`);
// console.log(`undefined is false? ${undefined == false}`);

console.log(only_defined_nums);
