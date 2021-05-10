
/* Home work Assignment 2 - Collections
 
 
 Q1. Differences between a Tuple and an Array?
 
 1. Tuple - Few values which go together.
    Array - List of related values.
 
 2. Tuple - can be standalone or be an item in an array (list) of tuples.
    Array - is always a list of primitive datatypes (or) String (or) Tuples (or) Objects etc...
 
 3. Tuple - values are closely connected and depend on each other
    Array - Elements may or may not be closely connnected and depend on each other
 
 4. Tuple - Limited operations/functions
    Array - Lot of operations/functions
 
 5. Tuple - Values in a tuple may or may not be of the same data type
    Array - Elements are usually of the same datatype but can be different if needed as per requirement
 
 6. Tuple - Lightweight
    Array - Heavyweight
 
 Q2. When would each be appropriate to use? (Code for mentioned uses cases below)
 
 A) Tuple -
 
 Stand alone use case:
 i. Producers of a movie
 
 Tuples as Elements of a collection (Array for example) use case
 ii. List of movies in theater (array of tuples) with each element being a tuple representing few info (movie name, show timing and ticket price) about a specific movie.
 etc..
 
 B) Array -
 
 i. List of movies released in 2020
 ii. Grocery list with Quantity to be purchased.
 etc..
 
 Q3. What are ranges?
 A range is an interval of values. For example a sequence of numbers from 1 to 10.
 Range can be closed 1...10 ie includes 1 and 10
 Range can be half open 1..<10 excludes 10
 Range can be one sided ...5 or 5...
 
 
 Q4. Why would you use a range instead of an array of tuple?
 i. The best way to represent a sequence of numbers (without interruption) would be range. It would be verbose to represent it as an array or tuple. Array and tuple have other uses cases as well. Also not sure about upper limit of values in a tuple. Need to check.
 ii. Range can help form limits (lower bound/upper bound) for substrings or subselecting a set of values in an array. This point is not applicable for Arrays or Tuples.

 
 */



import UIKit

// Code example for Array

var moviesReleasedIn2020 : [String] = ["Black Box", "Mulan", "The Lodge", "The Other Lamb", "The Rental"]

for movies in moviesReleasedIn2020 {
    
    print(movies)
}

// Code example for Tuple

var forrestGumpMovieProducers : (String, String, String) = ("Wendy Finerman","Steve Tisch","Steve Starkey")


print("Producers of Forrest Gump are \(forrestGumpMovieProducers.0), \(forrestGumpMovieProducers.1) and \(forrestGumpMovieProducers.2)")

// Code example for Range

let firstRange = 1...10 // closed range
for numbers in firstRange {
    print(numbers)
}

var secondRange = 1..<10 // half open range
for values in secondRange {
    print(values)
}


var fruitNames: [String] = ["Apple", "Banana", "Cantaloupe", "Orange", "Plums"] // one sided range
var thirdRange = ...2
for fruits in fruitNames[thirdRange] {
    print(fruits)
}


/* End of Assignment */


