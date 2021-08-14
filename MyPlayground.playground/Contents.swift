
var myVar:String = "hello"

myVar = "world"

print(myVar)
// Not compulsory to define type if assigning it righting away
var myInt = 100
print(myInt)

// Cannot reassign constants
let myConst:String = "World"

// Diving the bill at a party
let people:Double = 4
let subtotal:Double = 128
let tax = 0.13
var split:Double = 1.0*subtotal/people*(1+tax)

print(split)

// Functions
func myFunc(a:Int) -> Int {
    let b = 10
    print(a+b)
    return a+b
}

myFunc(a: 10)

func goodMorning() {
    print("Good Morning")
}
func printTotalWithTax(subtotal:Double){
    print(1.13*subtotal)
}
func printTotalWithTax(subtotal:Double) -> Double {
    return (1.13 * subtotal)
}
func calaculateTotalWithTax(subtotal:Double, tax:Double) -> Double {
    return subtotal * tax
}


struct ChatView {
//  Stored Properties
    var message:String = ""
//    Comuted property
    var messageWithPrefix:String {
        let prefix = "Chris Says: "
        return prefix + message
    }
//    View Code for this screen
//    Methods
    func sendChat() {
        print(message)
    }
    
    func deleteChat() {
        
    }
}

// Sample model of a car
struct Car {
    private var make = "Honda", model = "Civic", year = "2010"
    private var details:String {
        return year + " " + make + " " + model
    }
    
    public func getDetails() -> String {
        return details
    }
}

var newCar = Car()
print(newCar.getDetails())


struct TaxCalculator {
    private var tax = 1.5
    
    public func totalWithTax(_ bill:Double) ->Double {
        return bill * tax
    }
}

struct BillSplitter {
    public func splitBill(subTotal:Double, people:Int) -> Double {
        let personShare = TaxCalculator().totalWithTax(subTotal) / Double(people)
        return personShare
    }
}

print(BillSplitter().splitBill(subTotal: 120, people: 5))


// && and, || or,
if true {
    print("True executed")
}

var myNum:Int = 10
var myArray:[Int] = [Int]()

myArray.append(10)
myArray.append(100)
myArray.append(1000)
myArray[0] = 1
myArray.remove(at: 1)
myArray.insert(4, at: 1)
myArray.contains(4)
myArray.firstIndex(of: 100) // Returns Null if DNE
myArray.lastIndex(of: 100)
print(myArray)
print(myArray.count)

// For in loop
var ar = [1, 5, 10]
for index in 1...ar.count-1{
    ar[index]
}
for el in ar {
    el
}
var counter = 0
//Repeat while
repeat {
    counter -= 1
} while counter > 0
//While
while counter > 0 {
    counter -= 1
}

// Classes
class Person {
    private var name = ""
    public func talk () {
        print("make conversation")
    }
}
// Subclassing
final class Comedian: Person {
    override func talk() {
        print("Make people laugh")
        super.talk()
    }
}
// Final prevents it from being inherited
var c = Comedian()
c.talk()


//Nils, Optionals

var a = 1
var b:Int!
if b != nil {
    1 + b // This will crash the app
}

// Implicitly unwrapped Optional
// Xcode warns us Need to unwrap to get value
var impUnr:Int? = nil
if impUnr != nil {
    1 + impUnr!
}
// Optional Binding
if let optionalBinding = impUnr {
    1 + optionalBinding
}
var personWrapped:Person? = nil
personWrapped?.talk()  // Optional Chaining

// Dictionary
var dict:[Int: Int] = [Int:Int]()
dict[1] = 1 // Adding a key value pair
//print(dict[1]) // Returns the value as an optional
//print(dict[0]) // returns nil
dict[1] = 5
dict[1] = nil // Removes the key-value pair
// Can have Any type as the value
var declaredDic = [1: 1, 2: 2]
// Iterating through a dictionary
//for kvp in declaredDic {
//    // kvp is tuple
//    print("Key is " + String(kvp.key))
//    print("Value is " + String(kvp.value))
//}
//for (key, value) in declaredDic Does the same work
