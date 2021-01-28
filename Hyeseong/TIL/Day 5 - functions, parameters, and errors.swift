// 1. Writing functions
func printHelp() {
	let message = """
Welcome to My App!

Run this app inside a directory of images and 
MyApp will resize them all into thumbnails
"""
	
	print(message)
}

printHelp()


// 2. Accepting parameters
print("Hello, world!")

func square(number: Int) {
	print(number * number)
}

square(number: 8)


// 3. Returning values
func square_alt(number: Int) -> Int {
	return number * number
}

let result = square_alt(number: 8)
print(result)


// 4. Parameter labels
func square_alt2(number: Int) -> Int {
	return number * number
}

let result_alt = square_alt2(number: 8)

func sayHello(to name: String) {
	print("Hello, \(name)!")
}

sayHello(to: "Taylor")


// 5. Omitting parameter labels
func greet(_ person: String) {
	print("Hello, \(person)!")
}

greet("Taylor")


// 6. Default parameters
func greet_alt(_ person: String, nicely: Bool = true) {
	if nicely == true {
		print("Hello, \(person)!")
	} else {
		print("Oh no, it's \(person) again...")
	}
}

greet_alt("Taylor")
greet_alt("Taylor", nicely: false)


// 7. Variadic functions
print("Haters", "goona", "hate")

func square_alt3(numbers: Int...) {
	for number in numbers {
		print("\(number) squared is \(number * number)")
	}
}

square(numbers: 1, 2, 3, 4, 5)


// 8. Writing throwing functions
enum PasswordError: Error {
	case obvious
}

func checkPassword(_ password: String) throws -> Bool {
	if password == "password" {
		throw PasswordError.obvious
	}
	
	return true
}


// 9. Running throwing functions
do {
	try checkPassword("password")
	print("That password is good!")
} catch {
	print("You can't use that password.")
}

// 10. inout parameters
func doubleInPlace(number: inout Int) {
	number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)

/*
1. 함수를 사용하여 반복하지 않고 코드를 재사용 할 수 있다.
2. 함수는 매개변수를 받을수 있다. Swift에 각 매개 변수의 유형을 알려줘라.
3. 함수는 값을 반환 할 수 있으며 반환할 타입을 지정하면 된다. 여러 가지를 반환 할 시에는 튜플을 사용한다.
4. 매개 변수에 대해 내부와 외부의 이름을 다르게 사용하거나, 외부 이름을 아예 생략 할 수 있다.
5. 매개 변수는 기본값을 가질수 있어 특정 값이 공통적일때는 코드 작성을 적게하는데 도움이 된다.
6. 가변 함수는 0개 이상의 특정 매개변수를 사용할수 있으며 Swift는 그 입력을 배열로 변환한다.
7. 함수는 오류를 던질수 있지만, try로 호출하여 catch로 오류를 제어해야한다.
8. inout 으로 함수 외부에서 가져온 변수를 내부에서 변경할수 있지만 보통 새값을 반환하는것이 좋다.
*/