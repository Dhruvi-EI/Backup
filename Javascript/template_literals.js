/*
let boy1="nik"
let boy2="jack"
let sentence= `${boy1} is a friend of ${boy2}`
console.log(sentence)
console.log(`${boy1} is a friend of ${boy2}`)
console.log(boy1,"is a friend of",boy2)
*/

/*
//string functions
let n1="dhruvi"
console.log(n1.length)
console.log(n1.toUpperCase())
console.log(n1.toLowerCase())
console.log(n1.slice(2))
console.log(n1.slice(2,4))
*/


//string practice set
/*
const line='I am working in an information technology company.';
const word='information';
console.log(line.includes(word))
console.log(`The word "${word}" ${line.includes(word) ? 'is':'is not'} in the sentence`);
console.log(line.endsWith('company.'));
console.log(line.startsWith('I'));
*/

user=prompt("enter a name")
const palindrome = (a) => {
    // a=a.toLowercase();
    return a=a.split("").reverse().join("");
  }
console.log(palindrome(user))
