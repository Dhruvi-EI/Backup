//generate random number and guess the number
let x=Math.floor(Math.random()*100);
let a=0;
let chances=0;
// console.log(x)
while (a!=x){
    if(a<x){
        alert("number is smaller than the actual number")
    }
    else if(a>x){
        alert("number is greater than the actual number")
    }
    a=prompt("Enter a number: ")
    chances+=1;
    score=100-chances
}
console.log("no. of chances are ",chances)
console.log("your score is ",score)

//practice question 1
let runAgain=true;
const canDrive = a => {
  return a > 18 ? true : false
};
while (runAgain) {
  let a = prompt("enter your age")
  a = Number.parseInt(a)
  if (a<0){
    console.error("please enter a valid age")
  }
  if (canDrive(a)) {
    alert("you can drive")
  }
  else {
    alert("you cannot drive")
  }
  runAgain=confirm("Do you want to play again?")
}

//snake, water, gun game
const myArray=['s','w','g']
const user1=myArray[Math.floor(Math.random() * myArray.length)];
alert(user1)
const user2=myArray[Math.floor(Math.random() * myArray.length)];
alert(user2)
if(user1=='s' && user2=='w'){
  alert("user1 is a winner");
}
else if(user1=='w' && user2=='g'){
  alert("user1 is a winner");
}
else if(user1=='g' && user2=='s'){
  alert("user1 is a winner")
}
else if(user1==user2){
  alert("Tie")
}
else{
  alert("user2 is winner")
}

//snake water gun game
let u1=prompt("enter s for snake/w for water/g for gun")
let u2=prompt("enter s for snake/w for water/g for gun")
if(user1=='s' && user2=='w'){
  alert("user1 is a winner");
}
else if(user1=='w' && user2=='g'){
  alert("user1 is a winner");
}
else if(user1=='g' && user2=='s'){
  alert("user1 is a winner")
}
else if(user1==user2){
  alert("Tie")
}
else{
  alert("user2 is winner")
}