import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var set = Set<Int>()
    let numbers = numbers.sorted()
    
    for i in 0..<numbers.count-1 {
        for j in i+1..<numbers.count {
            set.insert(numbers[i]+numbers[j])
        }
    }
    let result = Array(set).sorted()
    print(result)
    return result
}

solution([2,1,3,4,1])
