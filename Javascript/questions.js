//add number to a string
let d="dhruvi"
let e=3
console.log(d+e)

//to see which datatype has being declared
console.log(typeof (d+e))

//creating a object(dictionary)
const c={
    name:"dhruvi",
    age:21,
    position:true
}

//we can add new content in the object and can also replace old content
c['friend']="laksh"
c['name']="DVV"
console.log(c)

//making a dictionary containing 5 words
const dict={
    Abnegation : "Renouncing a belief or doctrine",
    Circumlocution:"expressing someone in an indirect way",
    Disparate :"of a distinct kind"
}
console.log(dict.Disparate)

//Arithmetic operators
let a=6;
let b=4;
console.log("a+b",a+b)
console.log("a-b",a-b)
console.log("a*b",a*b)
console.log("a/b",a/b)
console.log("a%b",a%b)
console.log("++a",++a)
console.log("a++",a++)
console.log("--a",--a)
console.log("a--",a--)
console.log("a",a)

//Assignment operators(+=,-=,*=,/=,**)
let g=1;
g+=5
console.log("g",g)

//Comparison operators
let comp1=6
let comp2="6"
console.log("comp1==comp2 is",comp1==comp2)
console.log("comp1!=comp2 is",comp1!=comp2)
console.log("comp1===comp2 is",comp1===comp2) //if the data type is different then it will show false
console.log("comp1!==comp2 is",comp1!==comp2)


//Logical operators
let x=5;
let y=6;
console.log(x>y && x==5) //and operator
console.log(x>y || x==5) //or operator
console.log(!false) //not operator
console.log(!true)