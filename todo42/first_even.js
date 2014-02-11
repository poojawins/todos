// prereqs: arrays, methods, conditional logic
// Write a method that returns the first even element in a array of integers
// This is an old todo we did in Ruby, please rewrite your answer in javascript

// def first_even(items)

// end

var firstEven = function(items){
  for (var i = 0; i < items.length; i++){
    if (items[i] % 2 == 0){
      return items[i];
      break;
    }
  }
}

console.log(firstEven([1, 2, 3, 4]));

