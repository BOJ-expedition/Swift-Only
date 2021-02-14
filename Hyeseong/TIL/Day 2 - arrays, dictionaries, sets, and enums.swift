// Day 2 - 배열, 사전, 집합, 열거형

// 1. Arrays
let john = "John Lennon"
let paul = "Paul McCartney"
let george = "George Harrison"
let ringo = "Ringo Starr"

let beatles = [john, paul, george, ringo]

beatles[1]

// 2. Sets
let colors = Set(["red", "green", "blue"])

let colors2 = Set(["red", "green", "blue", "red", "blue"])

// 3. Tuples
var name = (first: "Taylor", last: "Swift")

name.0
name.first

// 4. Arrays vs sets vs tuples
let address = (house: 555, street: "Taylor Swift Avenue", city: "Nashville")

let set = Set(["aardvark", "astronaut", "azalea"])

let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]

// 5. Dictionaries
let heights = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

let heights_anno: [String: Double] = [
    "Taylor Swift": 1.78,
    "Ed Sheeran": 1.73
]

heights["Taylor Swift"]

// 6. Dictionary default values
let favoriteIceCream = [
    "Paul": "Chocolate",
    "Sophie": "Vanilla"
]

favoriteIceCream["Paul"]
favoriteIceCream["Charlotte"]
favoriteIceCream["Charlotte", default: "Unknown"]

// 7. Creating empty collections
var teams = [String: String]()

teams["Paul"] = "Red"

var results = [Int]()
var words = Set<String>()
var numbers = Set<Int>()

var scores = Dictionary<String, Int>()
var results_alt = Array<Int>()

// 8. Enumerations
let result = "failure"

let result2 = "failed"
let result3 = "fail"

enum Result {
    case success
    case failure
}

let result4 = Result.failure

// 9. Enum associated values
enum Activity {
    case bored
    case running
    case talking
    case singing
}

enum Activity_alt {
    case bored
    case running(destination: String)
    case talking(topic: String)
    case singing(volume: Int)
}

let talking = Activity_alt.talking(topic: "football")

// 10. Enum raw values
enum Planet: Int {
    case mercury
    case venus
    case earth
    case mars
}

let earth = Planet(rawValue: 2)

enum Planet_alt: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}

/*
 요약
 
 1. 배열, 집합, 튜플, 사전은 한개의 값 아래에 여러개의 아이템들을 집어넣을수 있다. 사용하는 방법이 다르기 때문에 원하는 용도에 맞추어서 사용한다.
 
 2. 배열은 사용자가 지정한 순서대로 아이템을 저장하고, 수로 표현된 위치를 사용하여 접근한다.
 
 3. 집합은 순서가 없이 저장되기때문에 수로 표현된 위치로 접근할 수 없다.
 
 4. 튜플은 크기가 고정되어 있고 아이템들에 이름을 추가할수 있다. 사용자는 수로 표현된 위치나 사용자가 지정한 이름으로 아이템을 읽을수 있다.
 
 5. 사전은 키와 관련된 형태로 아이템을 저장하고, 사용자는 키를 이용하여 아이템을 읽을 수 있다.
 
 6. 열거형은 서로 연관된 값들을 묶는 방법으로, 맞춤법 실수없이 사용할 수 있다.
 
 7. 사용자는 원시 값을 열거형에 추가하여 정수형 또는 문자열으로 부터 만들어지거나 연관된 값을 추가하여 각 케이스에 대한 추가 정보를 저장할 수 있다.
 */
