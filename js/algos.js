
phrase = ["long phrase","longest phrase","longer phrase"];
phraseLengths = [];

function longest(){
	for (var i = 0; i < phrase.length; i ++){
		phrase_lengths.push(phrase[i].length);
	};
	var length_of_word = Math.max.apply(Math, phraseLengths);
	var longest_word = phraseLengths.indexOf(length_of_word);
	console.log(phrase[longest_word]);
	
};

function match(){

};


var a = {name: "Steven", age: 54};
var b = {name: "Tamir", age: 54};


function match(){

	for (var key of Object.keys(a)) {  
  	var aValues = a[key];
}

	for (var key of Object.keys(b)) {  
  	var bValues = b[key];
}

	aKeys = obj.keys(a);
	bKeys = obj.keys(b);


	for (var i = 0; i < aKeys.length; i ++){
		counter == 0;
		if aValues[i] === bValues[i] && aKeys[i] === bKeys[i]{
			return true;
		else
			counter += 1
		}
	}
		if counter === aKeys.length{
			return false;
		}
};


// driver code
longest();
match();
