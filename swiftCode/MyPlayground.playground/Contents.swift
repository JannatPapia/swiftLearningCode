import UIKit
import Darwin

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
    counter = counter - 1 // my code would crash if i didn't give -1 here
}


/*
        its pretty much simmiler with while loop
      Repeat-While Loop
      repeat {
        some code
 }
 while condition
 */

var count = 5;
while count > 0 { // first compiler check first while loop it the condition is true then execute first while loop
    print("hello")
    count = count - 1
}
repeat{ // if first while loop condition is false then compiler go for 2nd repeat loop after condition first
    print("hello2")
    count = count - 1
} while count > 0



//             Lesson - 7
//         topics function part 1



//    Function
//    A block of code with a given name that can be excecuted on demand by calling that name.

/*
       Basic function Syntax
 
       func name(){
            some code
                }
 */

//   print("papia")
func addTwoNumbers() {
    
    let x = 1 // if we change the value then then code will update
    let y = 2
    let som = x + y
    
    print(som)
}
// print(som)  //  the code gets error because constant variable declare in function that can be use only function
addTwoNumbers()//call function multiple time
addTwoNumbers() // we can reuse code

// another example

func substractTwoNumbers(){
    let f = 1
    let g = 1
    let h = f - g
    
    print(h)
}

substractTwoNumbers()
substractTwoNumbers()


//           Lesson - 8
//           function part 2
//           topics - Method/Function



//  methods and functions are two different names for the same thing!


      /*    function syntax: Return Value
       
           func name() -> DataTypes{
             some code
             return someValue
       }
       
       */


func addTwoNumbersReturn() -> Int{
       let  a1 = 1
       let b1 = 1
    
    return a1 + b1 // 2
}

let sum1 = addTwoNumbersReturn()
print(sum1) // 2



/*
         Function Syntax : 1 Parameter
 
         func name(argumentLabel parameterName:DAataAtypes){
           some code
 }
 */


// example single parameter (its easy but not complete)

func addTwoNumbersSingle(arg para: Int) -> Int {
    let a2 = para // 2
    let b2 = 1
    
    return a2 + b2 // 2 + 1
}

let sum2 = addTwoNumbersSingle(arg: 2) //arg 2 passing value

print(sum2) //3


/*
 Function Syntex: Multiple Parameters
 
      func name(arg1 param1:DataType,arg2 prm2:DtaTypes) {
        some code
 }
 */


// multiple function example


// func addTwoNumbersMultiple(arg para: Int, arg2 para2: Int) -> Int
func addTwoNumbersMultiple(para: Int, para2: Int) -> Int // we can also change the parameter
{
   // let a3 = para // 2
   // let b3 = para2 //3
    
    // return a3 + b3 // 2 + 3
    return para + para2 // now function is pretty simple
}

//let sum3 = addTwoNumbersMultiple(arg: 2, arg2: 3) //arg 2 passing value
let sum3 = addTwoNumbersMultiple(para: 2, para2: 3) //

print(sum3) // 5



// example meaningful parameter


func addTwoNumbersMeaning(using number1: Int, and number2: Int) -> Int {
    return number1 + number2
}
let sum4 = addTwoNumbersMeaning(using: 2, and: 7)

print(sum4)



// short code example

func addTwoNumbersShort(_ number3: Int, _ number4: Int) -> Int {
    return number3 + number4
}
let sum5 = addTwoNumbersShort(3, 4)

print(sum5)



//                 Lesson - 9
//                 Topics - classes

// class can define custome datatype

/*
      Class Syntax
      class name{
       some datatypes
 }
 */
/*
  var  videoTitle = "iOS Development Kit"
  var videoBoby = "TableView VS TableView controller"
  var videoAuthor = "Nazmul Hasan"


  var  videoTitle = "iOS Development Kit"
  var videoBoby = "TableView VS TableView controller"
  var videoAuthor = "Nazmul Hasan"

*/


/*
         Classes and Object
    A class definition is a like a
    template or blueprint
 
    When you create an actual
    tangible instance of the class,
    that instance is called an "object"
 */

 
class VideoPost{   // define a class VideoPost
    // there are 3 class property
    var title = ""
    var body = ""
    var author = ""
    var numberOfComments = 0 // create a new property
    
    //define a new function in VideoPost class
    func addComment(){
        numberOfComments += 1
    }
    
}
          // define new VideoPost object
          //  it has a title,body and author
let myPost = VideoPost() //assign a constant

myPost.title = "Hello Playground" // excess those 3 properties
myPost.body = "Hello"
myPost.author = "Nazmul Hasan"
myPost.addComment()
print(myPost.numberOfComments)

print(myPost.author) // Nazmul Hasan

// create 2nd VideoPost
// this is different mySecondPost object

let mySecondPost = VideoPost()

mySecondPost.title = "Bye Playground" // excess those 3 properties
mySecondPost.body = "Hello Alec"
mySecondPost.author = "Alec Benjamin"

print(mySecondPost.numberOfComments) // call function

print(mySecondPost.author) // Alec Benjamin


//              Lesson - 10
//              topics - inheritance


/*
A class can inherit methods, properties, and other characteristics from another class. When one class inherits from another, the inheriting class is known as a subclass, and the class it inherits from is known as its superclass. Inheritance is a fundamental behavior that differentiates classes from other types in Swift.

 Classes in Swift can call and access methods, properties, and subscripts belonging to their superclass and can provide their own overriding versions of those methods, properties, and subscripts to refine or modify their behavior. Swift helps to ensure your overrides are correct by checking that the override definition has a matching superclass definition.

 Classes can also add property observers to inherited properties in order to be notified when the value of a property changes. Property observers can be added to any property, regardless of whether it was originally defined as a stored or computed property.
 
 */


// create a car class

/*
class car {
    var topSpeed = 200 // class car property
    
    // declare a function
    
    func drive(){
        print("Driving at \(topSpeed)")
    }
}


// declare a constant and create an object name car

let myRide = car()
myRide.topSpeed
myRide.drive() // calling drive function

*/

//     car,drive,fly are similler
//     here one class inherite another class
class car {
    var topSpeed = 200 // class car property
    
    // declare a function
    
    func drive(){
        print("Driving at \(topSpeed)")
    }
}

//define another class

class FutureCar{ // FututrCar inherite another car
    var topSpeed = 250 // class FutureCar property
    
    // also declare a function
    func drive(){
        print("Driving at \(topSpeed)")
    }
    
    //again declare a function .
    // also this car can flying
    
    func fly(){
        print("Flying")
    }
}
// declare a constant and create an object name car

let myRide = car()
myRide.topSpeed
myRide.drive() // call drive function

//declare another constant and create an object
//
let myNewRide = FutureCar()





















































































