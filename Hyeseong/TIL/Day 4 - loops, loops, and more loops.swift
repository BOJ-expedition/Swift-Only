// Day 4 – loops, loops, and more loops

// 1. For loops
let count = 1...10

for number in count {
	print("Number is \(number)")
}

let albums = ["Red", "1989", "Reputation"]

for album in albums {
	print("\(album) is on Apple Music")
}

print("Players gonna ")

for _ in 1...5 {
	print("play")
}


// 2. While loops
var number = 1

while number <= 20 {
	print(number)
	number += 1
}

print("Ready or not, here I come!")


// 3. Repeat loops
var number = 1

repeat {
	print(number)
	number += 1
} while number <= 20

print("Ready or not, here I come")

while false {
	print("This is false")
}

repeat {
	print("This is false")
} while false


// 4. Exiting loops
var countDown = 10

while countDown >= 0 {
	print(countDown)
	countDown -= 1
}

print("Blast off!")

while countDown >= 0 {
	print(countDown)
	
	if countDown == 4 {
		print("I'm bored. Let's go now!")
		break
	}
	
	countDown -= 1
}


// 5. Exiting multiple loops
for i in 1...10 {
	for j in 1...10 {
		let product = i * j
		print ("\(i) * \(j) is \(product)")
	}
}

outerLoop: for i in 1...10 {
	for j in 1...10 {
		let product = i * j
		print ("\(i) * \(j) is \(product)")
	}
}

outerLoop2: for i in 1...10 {
	for j in 1...10 {
		let product = i * j
		print ("\(i) * \(j) is \(product)")
		
		if product == 50 {
			print("It's a bullseye!")
			break outerLoop2
		}
	}
}


// 6. Skipping items
for i in 1...10 {
	if i % 2 == 1 {
		continue
	}
	
	print(i)
}


// 7. Infinite loops
var counter = 0

while true {
	print(" ")
	counter += 1
	
	if counter == 273 {
		break
	}
}

/*
1. 반복문은 상태가 거짓이 될떄까지 코드를 반복한다.
2. 가장 보편적인 반복문은 for 로, 내부의 각 항목을 임시 상수로 할당한다
3. for 에서 제공해주는 임시 상수가 필요하지 않을때는 밑줄 (_) 을 사용하여 해당 작업을 건너뛸수 있다.
4. 그 외에 명시적으로 조건을 제공하는 while 문이 있다.
5. while 과 유사하지만 repeat는 루프의 본문을 무조건 한번 이상 실행한다.
6. break를 사용하여 단일 반복문을 종료할수 있다. 하지만 중첩된 반복문에서는 break로 인해 
7. continue를 사용하여 반복문의 내용을 건너 뛸수 있다.
8. 무한 반복은 당신이 요청할때까지 종료되지 않으며, while true 로 만들수 있다. 내부에 무한 루프를 종료 시킬 조건이 있는지 꼭 확인하도록 하라.
*/