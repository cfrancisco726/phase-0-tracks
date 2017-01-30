
phrase = ["long phrase","longest phrase","longer phrase"];
phraseLengths = [];

function longest(){
	for (var i = 0; i < phrase.length; i ++){
		phraseLengths.push(phrase[i].length);
	};
	var length_of_word = Math.max.apply(Math, phraseLengths);
	var longest_word = phraseLengths.indexOf(length_of_word);
	console.log(phrase[longest_word]);
	
};

function match(){

};


var a = {name: "Steven", age: 54 };
var b = {name: "Tamir", age: 54};


function match(){


	for (var key of Object.keys(a)) {  
  	var aValues = a[key];
}

	for (var key of Object.keys(b)) {  
  	var bValues = b[key];
}

	aKeys = Object.keys(a);
	bKeys = Object.keys(b);


	for (var i = 0; i < aKeys.length; i ++){
		var counter = 0;
		if (aValues[i] === bValues[i] && aKeys[i] === bKeys[i]){
			return true;
		}else{
			counter += 1
			console.log(counter);
		}
	}
		if (counter === aKeys.length){
			console.log("false");
			return false;
		}else{
			consolelog("true");
			return true;
		}

};

// genArr = []
// function generate(num){

// }


// driver code
longest();
match();
