var t = Int(readLine()!)!
for i in 0..<t {
    let nums = readLine()!.split(separator: " ")
    print("Case #\(i+1): \(nums[0]) + \(nums[1]) = \(nums.reduce(0, {Int($0) + Int($1)!}))")
}