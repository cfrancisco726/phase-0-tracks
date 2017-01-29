
phrase = ["long phrase","longest phrase","longer phrase"];
phrase_lengths = [];

function longest(){
	for (var i = 0; i < phrase.length; i ++){
		phrase_lengths.push(phrase[i].length);
	};
	var length_of_word = Math.max.apply(Math, phrase_lengths);
	var longest_word = phrase_lengths.indexOf(length_of_word);
	console.log(phrase[longest_word]);
	
};

longest();