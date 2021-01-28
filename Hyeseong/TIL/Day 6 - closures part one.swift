// 1. Creating basic closure
let driving = {
	print("I'm driving in my car")
}

driving()


// 2. Accepting parameters in a closure
let driving_alt = { (place: String) in
	print("I'm going to \(place) in my car")
}

driving_alt("Londong")


// 3. Returning values from a closure
let drivingWithReturn = { (place: String) -> String in
	return "I'm going to \(place) in my car"
}

let message = drivingWithReturn("London")
print(message)


// 4. Closures as parameters
let driving = {
	print("I'm driving in my car")
}

func travel(action: () -> Void) {
	print("I'm getting ready to go.")
	action()
	print("I arrived!")
}


// 5. Trailing closure syntax
func travel(action: () -> Void) {
	print("I'm getting ready to go.")
	action()
	print("I arrived!")
}

travel() {
	print("I'm driving in my car")
}

travel {
	print("I'm driving in my car")
}