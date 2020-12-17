// Functinos with Multiple Return Values

func minMaxReturnTuple(array: [Int]) -> (min: Int, max: Int) {
    var currentMin = array[0]
    var currentMax = array[0]
    for value in array[1..<array.count] {
        if value < currentMin {
            currentMin = value
        } else if value > currentMax {
            currentMax = value
        }
    }
    return (currentMin, currentMax)
}

let bound = minMaxReturnTuple(array: [8, -6, 2, 109, 3, 71])


// Optinal tuple Return Types

func minMaxReturnOptionalTuple(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty {
        return nil
    }

    var currentMin = array[0]
    var currentMax = array[0]
    for v in array[1..<array.count] {
        if v < currentMin {
            currentMin = v
        } else if v > currentMax {
            currentMax = v
        }
    }
    return (currentMin, currentMax)
}

if let boundOptional = minMaxReturnOptionalTuple(array: [8, -6, 2, 109, 3, 71]) {
    // print(boundOptional.min)
}



// Function Argument Labels and Parameter Names

func greet(person: String, from hometown: String) -> String {
    return "Hello \(person)! Glad you could visit from \(hometown)."
}

// print(greet(person: "hamin", from: "seoul"))


// Ommiting Argument Labels

func greetWithNoLabel(_ person: String, _ hometown: String) -> String {
    return "Hello \(person)! Welcome to \(hometown)"
}

// print(greetWithNoLabel("hamin", "seoul"))


// Default Parameter Values

func someFunction(parameterWithoutDefault: Int, parameterWithDefault: Int = 12) -> Int {
     return parameterWithoutDefault + parameterWithDefault
}

// print(someFunction(parameterWithoutDefault: 12))


// Variadic Parameters

func arithmeticMean(_ numbers: Double...) -> Double {
    var total: Double = 0 
    for number in numbers {
        total += number
    }
    return total / Double(numbers.count)
}
arithmeticMean(1,2,3,4,5)
arithmeticMean(3, 8.25, 10.75)


// In-Out Parameters

func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    let temp = a
    a = b
    b = temp
}

var someInt = 3
var anotherInt = 107
swapTwoInts(&someInt, &anotherInt)
// print("\(someInt), \(anotherInt)")


/// Function Types

func addTwoInts(_ a: Int, _ b: Int) -> Int {
    return a + b
}
func multiplyTwoInts(_ a: Int, _ b: Int) -> Int {
    return a * b
}
func printHelloWorld() {
    print("hello, world")
}

var mathFunction: (Int, Int) -> Int = addTwoInts

//print("Result \(mathFunction(2,3))")

let anotherMathFunction = addTwoInts
// anotherMathFunctino is inferred to be of type (Int, Int) -> Int


// Function Types as Parameter Types

func printMathResult(_ mathFunction: (Int, Int) -> Int, _ a: Int, _ b: Int) {
    print("Result \(mathFunction(a,b))")
}
printMathResult(addTwoInts, 3, 5)


// Function Types as Return Types
func stepForward(_ input: Int) -> Int {
    return input + 1
}
func stepBackward(_ input: Int) -> Int {
    return input - 1
}

func choooseStepFunction(backward: Bool) -> (Int) -> Int {
    return backward ? stepBackward : stepForward
}

var currentValue = 3
let moveNearerToZero = choooseStepFunction(backward: currentValue > 0)
// moveNearerToZero 는 이제 stepBackward() 함수를 가르키고 있다

print("Counting to zero:")
while currentValue != 0 {
    print("\(currentValue)")
    currentValue = moveNearerToZero(currentValue)
}


func chooseStepFunction_nested(backward: Bool) -> (Int) -> Int {
    func stepForward(input: Int) -> Int { 
        return input + 1 
    }
    func stepBackward(input: Int) -> Int {
        return input - 1 
    }
    return backward ? stepBackward : stepForward
}    

var currentValue_nested = -4
let moveNearerToZero_nested = chooseStepFunction_nested(backward: currentValue > 0)
// moveNearerToZero_nested는 이제 중첩돼 있는 stepforward 함수를 가르킵니다
while currentValue != 0 {
    print("\(currentValue)!")
    currentValue = moveNearerToZero_nested(currentValue_nested)
}




















