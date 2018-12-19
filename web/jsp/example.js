//
var greeping='Howdy';
var name = 'Molly';
var message = ', please check your order:';
var welcome = greeting + name + message;

var sign = 'Montague House';
var tiles = sign.length;
var subTotal = tiles*5;
var shipping = 7;
var grandTotal = subTotal+shipping;

var el =document.getElementById('shipping');
el.textContent = welcome;