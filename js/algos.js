
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
			return counter;
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
match();
generate(5);
