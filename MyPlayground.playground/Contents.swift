import Cocoa


// var can be changed
var greeting = "Hello, playground"
//e.g
greeting = "Hi Tumi"

// let canbe changed
let playerName = "Jacob"
let age = 26
// String interpulation
let message = "Hello, my name is \(playerName) and I'm \(age) years old."
print(message)
// Arrays accessed by index from 0
var friends = ["John", "Paul", "George", "Ringo"]
// numbers can be used in string interpulatio
print("5 x 5 is \(5 * 5)")

// this print number of charactors
print(playerName.count)
// uppercase String
print(playerName.uppercased())
print(greeting.hasPrefix("Hi"))
print(greeting.hasSuffix("Tumi"))

// numbers can be used in string interpulatio
print("5 x 5 is \(5 * 5)")

// use underscore for readability but swift will ignore when prints
let millioner = 100_000_00
print(millioner.isMultiple(of: 2))

//doubles
var moneyCapital = 10
var moneyChange = 1.5


// casting double
var moneySpend = Double(moneyCapital) - moneyChange
print(moneySpend)

//boolean true or fslse
let gameOver = true
let isMultiple = 120.isMultiple(of: 3)

var isAuthenticated = false
isAuthenticated = !isAuthenticated
print(isAuthenticated)
isAuthenticated = !isAuthenticated
print(isAuthenticated)

var gameOverNow = false
print(gameOverNow)

gameOverNow.toggle()
print(gameOver)

/**
 Swift lets us create constants using let, and variables using var.
 If you don’t intend to change a value, make sure you use let so that Swift can help you avoid mistakes.
 Swift’s strings contain text, from short strings up to whole novels. They work great with emoji and any world language, and have helpful functionality such as count and uppercased().
 You create strings by using double quotes at the start and end, but if you want your string to go over several lines you need to use three double quotes at the start and end.
 Swift calls its whole numbers integers, and they can be positive or negative. They also have helpful functionality, such as isMultiple(of:).
 In Swift decimal numbers are called Double, short for double-length floating-point number. That means they can hold very large numbers if needed, but they also aren’t 100% accurate – you shouldn’t use them when 100% precision is required, such as when dealing with money.
 There are lots of built-in arithmetic operators, such as +, -, *, and /, along with the special compound assignment operators such as += that modify variables directly.
 You can represent a simple true or false state using a Boolean, which can be flipped using the ! operator or by calling toggle().
 String interpolation lets us place constants and variables into our strings in a streamlined, efficient way.
 */

// Arrays

var beatles = ["John", "Paul", "George", "Ringo"]
beatles.append("jacob")
let numbers = [4, 8, 15, 16, 23, 42]
var score = Array<Int>()
score.append(20)
score.append(30)
score.append(50)
//to count number of value
print(score.count)
var temperatures = [25.3, 28.2, 26.4]

var characters = ["Lana", "Pam", "Ray", "Sterling"]
print(characters.count)
// removes ray
characters.remove(at: 2)
print(characters.count)
// removes all
characters.removeAll()
print(characters.count)

let bondMovies = ["Casino Royale", "Spectre", "No Time To Die"]
print(bondMovies.contains("Frozen"))

let cities = ["London", "Tokyo", "Rome", "Budapest"]
print(cities.sorted())

let presidents = ["Bush", "Obama", "Trump", "Biden"]
let reversedPresidents = presidents.reversed()
print(reversedPresidents)
