console.log("Hello World")
let a1=12 // a contains 12 //we can also use var a=12
console.log(a1)
a1="dhruvi"
console.log(a1)
const b1="virani"
console.log(b1)

//Primitives datatypes - nn bb ss u
let a=2;
let b=null;
let c=true;
let d=BigInt("512")+BigInt("8")
let e="dhruvi"
let f=Symbol('I am a symbol')
let g=undefined
console.log(a,b,c,d,e,f,g)

//Non-primitive datatypes - objects in js
const item = {
    "dhruvi":true,
    "shivam": false,
    "vidhi": 21,
    "rohan": undefined
}
console.log(item["rohan"])
console.log(item["dhruvi"])
