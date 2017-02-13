$(document).ready(function(){
    $("#p1").hover(function(){
        alert("You hovered over Door 1");
    },
    function(){
        alert("You lose");
    }); 


    $("#p2").hover(function(){
        alert("You hovered over Door 2");
    },
    function(){
        alert("You lose");
    }); 

   	$("#p3").hover(function(){
        alert("You hovered over Door 3");
    },
    function(){
        alert("You win");
    }); 


});