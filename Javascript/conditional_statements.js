// run this code in any console, it will not work in vs code
let a = prompt("what is your age?")
a = Number.parseInt(a) //converting a string into number(type casting)
if (a>0 && a<18){
    alert("Young age")
}
else if(a>18){
    alert("Adult")
}
else{
    alert("Not valid age")
}

console.log("You can",(a<18? "not drive":"drive")) //ternary operator


//switch case
let age=prompt("what is your age?")
switch(age){
    case '12':
        console.log("your age is 12")
        break
    case '13':
        console.log("your age is 13")
        break
    case '14':
        console.log("your age is 14")
        break
    default:
        console.log("your age is not mentioned")
}

//Write a program to check if a number is divisible by 2 and 3
let  num=prompt("Enter a number")
num=Number.parseInt(num)
if (num%2==0 && num%3==0){
    console.log("Number is divisible by 2 and 3 both")
}
else{
    console.log("Number is not divisible by 2 and 3 both")
}

//Write a program to check if a number is divisible by 2 or 3
let  number=prompt("Enter a number")
number=Number.parseInt(num)
if (number%2==0 || number%3==0){
    console.log(true)
}
else{
    console.log(false)
}