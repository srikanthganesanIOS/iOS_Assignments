import UIKit

/* Homework Assignment 3 : Control Flow
 
   Print numbers 1 to 100
   Print "Fizz" for multiples of 3
   Print "Buzz" for multiples of 5
   Print "FizzBuzz" for multiples of 3 and 5
   Identify Prime numbers
 
 */

for number in 1...100 { // for-in loop to iterate from 1 to 100
    
    
    // Identify the number of factors of a number
    var factorsCount : Int = 0
    var printString : String = ""
    for no in 1...number { // nested for-in loop
        if(number % no == 0){
            factorsCount += 1
        }
        
    }
    
    /*If number is 1 then proceed to next iteration as 1 is not prime, not multiple of 3 and 5
     */
    if(number == 1){
        print(1)
        continue
    }
    
    //Identify multiples of 3, 5 and both and identify prime number based on factor count
    if(number % 3 == 0 && number % 5 == 0){
        //factor count > 2 means it is not prime else prime
        printString = factorsCount>2 ? "FizzBuzz":"FizzBuzz and Prime" // ternary operator
        print("\(number) - " + printString)
    }else if(number % 3 == 0){
        printString = factorsCount>2 ? "Fizz" : "Fizz and Prime"
        print("\(number) - " + printString)
    }else if(number % 5 == 0){
        printString = factorsCount>2 ? "Buzz" : "Buzz and Prime"
        print("\(number) - " + printString)
    }else{
        printString = factorsCount>2 ? "" : " - Prime"
        print("\(number)" + printString)
    }
    
}
/* End of Assignment */
