import Cocoa

var greeting = "Hello, playground"

//this ise.g for dictionary
let employee2 = [
    "name": "Taylor Swift",
    "job": "Singer",
    "location": "Nashville"
]
// will get warning if dont give default value
print(employee2["name", default: "Unknown"])
print(employee2["job", default: "Unknown"])
print(employee2["location", default: "Unknown"])
//dictionary using whatever explicit types you want to store, then set keys one by one:
var heights = [String: Int]()
heights["Yao Ming"] = 229
heights["Shaquille O'Neal"] = 216
heights["LeBron James"] = 206

//How to use sets for fast data lookup no Specific order but can be sorted and stores no duplicates
var people = Set<String>()
people.insert("Denzel Washington")
people.insert("Tom Cruise")
people.insert("Nicolas Cage")
people.insert("Samuel L Jackson")


//How to create and use enums > short for enumeration
enum weekDay {
    case Monday
    case Tuesday
    case Wednesday
    case Thursday
    case friday
}

var day = weekDay.Monday
day = weekDay.Tuesday
day = weekDay.Wednesday
day = .Thursday
day = .friday

//How to use type annotations
let surname: String = "Lasso"
var score: Int = 0
// Array annotations
var albums: [String] = ["Red", "Fearless"]
// dictionary annotations
var user: [String: String] = ["id": "@twostraws"]
// set annotations
var books: Set<String> = Set(["The Bluest Eye", "Foundation", "Girl, Woman, Other"])
// empty array this does the samething
var teams: [String] = [String]()
var cities: [String] = []
var clues = [String]()

/**
 Arrays let us store lots of values in one place, then read them out using integer indices. Arrays must always be specialized so they contain one specific type, and they have helpful functionality such as count, append(), and contains().
 Dictionaries also let us store lots of values in one place, but let us read them out using keys we specify. They must be specialized to have one specific type for key and another for the value, and have similar functionality to arrays, such as contains() and count.
 Sets are a third way of storing lots of values in one place, but we don’t get to choose the order in which they store those items. Sets are really efficient at finding whether they contain a specific item.
 Enums let us create our own simple types in Swift so that we can specify a range of acceptable values such as a list of actions the user can perform, the types of files we are able to write, or the types of notification to send to the user.
 Swift must always know the type of data inside a constant or variable, and mostly uses type inference to figure that out based on the data we assign. However, it’s also possible to use type annotation to force a particular type.
 */

//check multiple conditions with if
enum TransportOption {
    case airplane, helicopter, bicycle, car, scooter
}

let transport = TransportOption.airplane

if transport == .airplane || transport == .helicopter {
    print("Let's fly!")
} else if transport == .bicycle {
    print("I hope there's a bike path…")
} else if transport == .car {
    print("Time to get stuck in traffic.")
} else {
    print("I'm going to hire a scooter now!")
}

//Switch over if for multiple conditions
let days = 5
print("My true love gave to me…")

switch days {
case 5:
    print("5 golden rings")
    fallthrough
case 4:
    print("4 calling birds")
    fallthrough
case 3:
    print("3 French hens")
    fallthrough
case 2:
    print("2 turtle doves")
    fallthrough
default:
    print("A partridge in a pear tree")
}

//ternary conditional operator for quick tests
let hour = 23
print(hour < 12 ? "It's before noon" : "It's after noon")

//How to use a for loop to repeat work
let platforms = ["iOS", "macOS", "tvOS", "watchOS"]
for os in platforms {
    print("Swift works great on \(os).")
}
// range
for i in 1...5 {
    print("Counting from 1 through 5: \(i)")
}

print()

for i in 1..<5 {
    print("Counting 1 up to 5: \(i)")
}
//How to use a while loop to repeat work
var countdown = 10

while countdown > 0 {
    print("\(countdown)…")
    countdown -= 1
}

print("Blast off!")

//How to skip loop items with break and continue
//continue will run even if it find an error test
let filenames = ["me.jpg", "work.txt", "sophie.jpg", "logo.psd"]

for filename in filenames {
    if filename.hasSuffix(".jpg") == false {
        continue
    }

    print("Found picture: \(filename)")
}

// break sip all the remaining iteration
let number1 = 4
let number2 = 14
var multiples = [Int]()

for i in 1...100_000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiples.append(i)

        if multiples.count == 10 {
            break
        }
    }
}

print(multiples)
/**
 We use if statements to check a condition is true. You can pass in any condition you want, but ultimately it must boil down to a Boolean.
 If you want, you can add an else block, and/or multiple else if blocks to check other conditions. Swift executes these in order.
 You can combine conditions using ||, which means that the whole condition is true if either subcondition is true, or &&, which means the whole condition is true if both subconditions are true.
 If you’re repeating the same kinds of check a lot, you can use a switch statement instead. These must always be exhaustive, which might mean adding a default case.
 If one of your switch cases uses fallthrough, it means Swift will execute the following case afterwards. This is not used commonly.
 The ternary conditional operator lets us check WTF: What, True, False. Although it’s a little hard to read at first, you’ll see this used a lot in SwiftUI.
 for loops let us loop over arrays, sets, dictionaries, and ranges. You can assign items to a loop variable and use it inside the loop, or you can use underscore, _, to ignore the loop variable.
 while loops let us craft custom loops that will continue running until a condition becomes false.
 We can skip some or all loop items using continue or break respectively.
 
 */
//Checkpoint 3

for i in 1...100 {
    if i.isMultiple(of: 3) && i.isMultiple(of: 5){
        print("FizzBuzz")
    } else if i.isMultiple(of: 3){
        print("fizz")
    } else if i.isMultiple(of: 5){
        print("buzz")
    } else {
        print(i)
    }
}
