
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
