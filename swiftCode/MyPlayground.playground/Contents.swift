import UIKit

//        Lesson - 1

//variable (str,var)
//a variable holds some data
//var variable create anew data
// \n (new line)
/*
var greeting = "Hello, playground"
var str = "Papia , Nazmul"
print(str) // print area print something
var a = 2 //declare a variable
var b = 4 //declare a variable
a = 6 // now all a is 6
print(a+b)
print(a-b)
print(a*b)
print(a/b)
*/

//assignment operator
//the assignment operator assings what's on the right side into the left side

a = b // a assign b
//var a = 2  Redeclare a variable is error
// str = 1 error

var NumbersOfApple = 20


//Constants
// like a variable except it can't be reassigned new data after the first assigment .
// Uses The "let" keyword insted.

let c = 10
//c = 23 //cannot assign to value 'c' it is a 'let' constant
// if i use var variable than i can reassign it



//     Lesson-2
//     Topic - Data types


/*
Types                        Data Types
Basic Data Type :            int, char, float, double
Derived Data Type :          array, pointer, structure, union
Enumeration Data Type :      enum
Void Data Type :             void
 */
/*
 int =  Integers are whole numbers that can have both zero, positive and negative values but no decimal values.
 
 float = decimal numbers
 
 double = large decimal numbers
 
 string = piece of text
 
 bool = true or false
 */



  //var greeting = "Hello, playground"
 var str:String = "Papia , Nazmul"
 print(str) // print area print something
 var a :Int = 2 //declare a int variable
 var b:Int = 4 //declare a int variable
 str = "20" // now i initialize int to string by " "
 str = String(20) // its also right
 a = 6 // now all a is 6
 print(a+b)
 print(a-b)
 print(a*b)
 print(a/b)
 print(str)

var d : Float = 6.3
var e : Double = 8.56
var f : Bool = true

print(Int(d))
print(Int(e))
print(round(e)) //  print round number it also a decimal number like 9.0
print(Int(round(e))) // print a int number like 9
print(f)

 


//         Lesson - 3
//         Topic - if ELSE statement


/*   syntex of if statement
        if condition{
    some code
 }
 */
   
var number =  10
if number > 5{
    print("number is grater than 5")
}


/*   syntex of  ELSE IF clause
        if condition1{
    some code
 }
 else if condition2{
    some code
 }
 */

var number1 =  10

if number1 > 53{ // i the condition is not true then it go condition2
    print("number1 is grater than 5")
}
else if number1 > 12{ // if
    print("number1 is grater than 12")
}

/*   syntex of  ELSE IF clause
        if condition1{
    some code
 }
 else if condition2{
    some code
 }
 else{
 some code
 
 }
 */

 // example no - 1

var number2 =  10

if number2 > 53{
    print("number1 is grater than 5")
}
else if number2 > 12{
    print("number1 is grater than 12")
}
else if number2 > 64{
    print("number1 is equal 6")
}
else // if any condition was not true then print else statement
{
    print("nothing is true")
}

//example no 2

let item = 45 // we also use 'let' constants value

if item == 45{ // use assigning operator
    print("branch 1")
}
else if item < 33{
    print("branch 2")
}
else if item >= 40{
    print("branch 3")
}
else{
    print("there is no branch")
}

// example no - 3


let ab = 10
let ba = 1
let ca = 15

if ab < 4 || (ba < 4 && ca == 15)
// bracket is too important
// bracket are matter a lot and its changing the meaning what are we checking
{
    print("true")
}
//if ab < ba{
 //   print(ab , " is smaller then " , ba) //now i show the value of ab and ba
//}
else if ab == ba {
    print(ab, "is equal", ba)
}
else if  ab > ba{
    print("branch 1")
}
else if !(a == 10 && b == 1) // ! true to false
{
    print("branch 2")
}
else if ab != ba {
    print("branch 3")
}
else{
    print("false")
}



//          Lesson - 4
//          Topics - switch statements


/*
       switch statement syntex
       switch some value to consider {
           case value 1 :
                 respond to value 1
           case value 2 :
                value 3 :
                respond to value 2 or 3
           default:
                otherwise, do something else
          }
 */

// differnt condition check value by switch statement its easy to use

 var someCharacter:Character = "n"

switch someCharacter {
      case "n":
          print(" is letter n")
      case "p":
          print(" is letter p")
    
      case "q", "r" :  // another case statement
          print("letter is q or r")
    
      default:
         print("some fallback")
          
      }


//         Lesson - 5
//         topic - loop(part -1)

/*
     For In Loop syntax
     for counter in lower....upper{
         some code
 }
 
 */


//for index in 1...5{
    for _ in 1...10{ // if we dont use index then we can use _ its perfect
        print("hello") // it print hello 10 times
   // print(index) // its print index 1 2 3 4 5 on new line
   // print("Nazmul") // its  print Nazmul 5 times
}

// use loop for adding number one to another
var sum = 0
for index in 1...5{
    sum = sum + index
}
 print(sum)



//         Lesson - 6
//         part 2
//         topics - 2 types of loops (while, do while)

/*
   While Loop syntax
  
  while condition{
      some code
 }
 */

var  counter = 5

while counter > 0 {
    print("hello")
    counter = counter - 1
}



/*
   Do while Loop syntax
   
 */















