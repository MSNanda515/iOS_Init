
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
