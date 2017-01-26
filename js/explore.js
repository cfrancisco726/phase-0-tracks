// // assign string to variable
// // break up string into characters and assign to array
// // run for loop that pushes each letter to a new array
// // then combine each letter into one word from new array


function word(a){
var word = a;
var split_reverse = word.split("");
// console.log(split_reverse);

var reverse = [];

 for (i = 0; i < split_reverse.length; i++){
 	reverse.unshift(word[i]);
 }
console.log(reverse.join(""));
}
	
if (2 == 2){
	word("diputs");
}
