// Day 3 - 연산자와 상태

// 1. Arithmetic Operators
let firstScore = 12
let secondScore = 4

let total = firstScore + secondScore
let difference = firstScore - secondScore

let product = firstScore * secondScore
let divided = firstScore / secondScore

let remainder = 13 % secondScore


// 2. Operator overloading
let meaningOfLife = 42
let doubleMeaning = 42 + 42

let fakers = "Fakers gonna "
let action = fakers + "fake"

let firstHalf = ["John", "Paul"]
let secondHalf = ["George", "Ringo"]
let beatles = firstHalf + secondHalf


// 3. Compound assignment operators
var score = 95
score -= 5

var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"


// 4. Comparison operators
let thirdScore = 6
let fourthScore = 4

thirdScore == fourthScore
thirdScore != fourthScore

thirdScore < fourthScore
thirdScore >= fourthScore

"Taylor" <= "Swift"


// 5. Conditions
let firstCard = 11
let secondCard = 10

if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}

if firstCard + secondCard == 2 {
    print("Aces - lucky!")
} else if firstCard + secondCard == 21 {
    print("Blackjack!")
} else {
    print("Regular cards")
}


// 6. Combining conditions
let age1 = 12
let age2 = 21

if age1 > 18 && age2 > 18 {
    print("Both are over 18")
}

if age1 > 18 || age2 > 18 {
    print("At least one is over 18")
}


// 7. The ternary operator
print(firstCard == secondCard ? "Cards are the same" : "Cards are different")

if firstCard == secondCard {
    print("Cards are the same")
} else {
    print("Cards are different")
}


// 8. Switch statements
let weather = "sunny"

"""
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
default:
    print("Enjoy your day!")
}
"""

switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}


// 9. Range operators
let score_alt = 85

switch score_alt {
case 0..<50:
    print("You failed badly.")
case 50..<85:
    print("You did OK.")
default:
    print("You did great!")
}


/*
 요약
 
 1. Swift 에는 산술 및 비교를 위한 연산자가 있으며, 보통 사람들이 알고 있는대로 작동을 한다.
 
 2. 변수가 있는 장소에서 바로 값을 수정할수 있는 +=나 -=같은 복합 산술 연산자가 있다.
 
 3. if, else, else if 를 사용하여 상태의 결과값에 따라 코드를 실행시킬수 있다.
 
 4. Swift 에는 참 및 거짓 검사 코드가 결합된 삼항 연산자가 있다. 다른데에서 사용되어 있는경우를 볼순 있지만 권장하지는 않는다
 
 5. 같은 값을 비교하는 여러 조건이 있을때는 switch를 사용하는것이 더 명확하다
 
 6. ..< 나 ... 를 통해서 끝값이 제외되거나 포함된 범위를 만들어줄수 있다.
 */
