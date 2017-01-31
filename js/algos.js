function longest(arr){
	for (var i = 0; i < phrase.length; i ++){
		phraseLengths.push(phrase[i].length);
	};
	var length = Math.max.apply(Math, phraseLengths);
	var longestWord = phraseLengths.indexOf(length);
	return phrase[longestWord];
};

function match(source, comparison) {
  var sourceKeys = Object.keys(source);
  var isMatch = false;
    
  sourceKeys.some(function(key) {
      if (comparison[key] !== 'undefined' && source[key] === comparison[key]) {
        isMatch = true;
        return true;
      }
  });
  
  return isMatch;
}



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

var phrase = ["long phrase","longest phrase","longer phrase"];
var phraseLengths = [];
var a = {name: "Tamir", age: 4, weight: 140, height: 6};
var b = {name: "John", age: 5, weight: 160};

console.log(longest(phrase));
console.log(match(a,b));
generate(5);


