import Foundation

var input:String = readLine()! // ReadLine 의 리턴값은 Optional 이기 때문에 unwrap 해줘야 한다
var result:String = String()
var count:Int = 0
if Int(input)! < 10 {
    input.append("0") // 문자열 결합시에는 append 혹은 +=
}
let final = input

var first_index: Character = input[input.startIndex]
repeat {
    result = "" // 빈 문자열 초기화
    var second_index: Character = input[input.index(before: input.endIndex)]
    
    let first = first_index.wholeNumberValue! // 숫자가 맞으면 optional int로 변환하여 리턴한다
    let second = second_index.wholeNumberValue! // 숫자가 맞으면 optional int로 변환하여 리턴한다
    let sum = first+second
    
    input = String(sum)
    first_index = second_index // 기존의 second 인덱스를 첫번째 인덱스로 붙힌다.
    
    result.append(String(first_index))
    result.append(input[input.index(before: input.endIndex)])
    
    count += 1
} while final != result

print(count)