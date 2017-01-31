
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


var a = {name: "Tamir", age: 4, weight: 12};
var b = {name: "John", age: 54, weight: 10};


function match(){

	var aKeys = Object.keys(a);
	// console.log(aKeys);
	var bKeys = Object.keys(b);
	// console.log(bKeys);

	var aValues = Object.keys(a).map(function(key){
		// return a[key];
	});
	
	var bValues = Object.keys(b).map(function(key){
		// return b[key];
	});

	
	for (var i = 0; i < aKeys.length; i++){
		if (aValues[i] === bValues[i] && aKeys[i] === bKeys[i]){
			return true;
		}
	}

	return false;

};



function generate(num){
  	var randomLength = Math.random() * (10 - 1) + 1;
	var text = "";
	var possible = "abcdefghijklmnopqrstuvwxyz";
	var arrGen = [];
	for(var i = 0; i < num; i++) {
	    for(var x = 0; x < randomLength; x++) {
	        text += possible.charAt(Math.floor(Math.random() * possible.length));
	    }
		arrGen.push(text);
		var text ="";
	}
	console.log(arrGen);
	return arrGen;
};


// driver code
longest();
console.log(match());
generate(5);


