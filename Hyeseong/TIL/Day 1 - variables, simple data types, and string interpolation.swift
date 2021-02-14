// Day 1 - 변수, 간단한 자료 형식 그리고 문자열 보간

// 1. 변수
var str = "Hello, playground"
str = "Goodbye"

// 2. 문자열과 정수
var age = 38
var population = 8_000_000

// 3. 여러줄의 문자열
var str1 = """
This goes
over multiple
lines
"""

var str2 = """
This goes \
over multiple \
lines
"""

// 4. 실수형과 논리형
var pi = 3.141
var awesome = true

// 5. 문자열 보간
var score = 85
var sentence = "Your score was \(score)"

var results = "The test results are here: \(sentence)"

// 6. 상수
let taylor = "swift"

// 7. 형식 어노테이션
let blah = "Hello, playground"

let album: String = "Reputation"
let year: Int = 1989
let height: Double = 1.78
let taylorRocks: Bool = true


/*
 요약:
 
 1. 'var'를 이용해서 변수를, 'let' 을 이용하여 상수를 만들수 있다.
    가능한 상수를 사용하자.
 
 2. 문자열은 큰 따옴표 한개로 시작해서 큰 따옴표 한개로 끝나지만, 여러줄에 걸친 문자열을 작성하고 싶으면 큰 따옴표 세개를 이용한다.
 
 3. Integer는 정수, Double은 실수, Boolean은 참 / 거짓을 저장한다.
 
 4. 문자열 보간으로 다른 변수와 상수가 내부에 포함된 문자열을 만들수 있다.
 
 5. Swift는 변수와 상수 내부의 값으로 타입 추론을 하지만, 사용자가 명시적으로 지정할수도 있다.
 */
