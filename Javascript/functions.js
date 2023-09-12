/*
function sum(a,b){
    console.log("the result is ")
    return a+b
}

console.log(sum(2,3));
*/

const sum = (p,q)=>{
    return p+q
}
console.log(sum(2,3))

//practice questions on loops and functions
const obj={
    rohan: 80,
    dhruvi:98,
    ruhi: 85
}
for (let i in obj){
    console.log("The marks of "+ i +" are "+ obj[i])
}

/*
for (i=0;i<Object.keys(obj).length;i++){
    console.log("The marks of "+ Object.keys(obj)[i] +" are "+ obj[Object.keys(obj)[i]])
}
*/

//write a program to print try again till the user enters the given correct number
/*
let cn=3
let i
while(i!=cn){
    console.log("Try again")
    i=prompt("Enter a number ")
}
console.log("you have entered a correct number")
*/

//write a program to find mean of 5 numbers using function
const mean= (j,k,l,m,n)=>{
    return((j+k+l+m+n)/5)
}
console.log(mean(1,2,3,4,5))