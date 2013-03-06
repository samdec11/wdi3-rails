/*
multi-line comment
alert('hello world');
*/

// single-line comment

var first = prompt('enter your name');
//alert('you just entered ' + first);
console.log('you just entered ' + first);

var age = prompt('enter your age');
age = parseInt(age);

if(age < 18)
{
  console.log('you are a minor');
}
else
{
  console.log('you are a major');
}

switch(age)
{
  case 10:
    console.log('you are 10');
    break;
  case 20:
    console.log('you are 20');
    break;
  case 30:
    console.log('you are 30');
    break;
  default:
    console.log('age not specified');
    break;
}

var colors = [];
var color = prompt('enter a color');

while(color != 'q')
{
  colors.push(color);
  color = prompt('enter a color');
}

for(var index = 0; index < colors.length; index++)
{
  console.log('the color is: ' + colors[index]);
}

function square(number)
{
  return (number * number);
}

function cube(number)
{
  return (square(number) * number)
}

function area(length, width)
{
  return (length * width)
}

function get_number(message)
{
  return parseInt(prompt(message));
}

var response = prompt('(s)quare, (c)ube, (a)rea, or (q)uit?');

switch(response)
{
  case 's':
    var num = get_number('enter a number');
    console.log(square(num));
    break;
  case 'c':
    var num = get_number('enter a number');
    console.log(cube(num));
    break;
  case 'a':
    l = get_number('enter a length')
    w = get_number('enter a width')
    console.log('the area is: ' + area(l,w))
    break;
  case 'q':
    break;
}