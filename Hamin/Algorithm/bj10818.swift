readLine()
let a = readLine()!.split(separator: " ").map{Int(String($0))!}
print(a.min()!, a.max()!)