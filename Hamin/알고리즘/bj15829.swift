import Foundation
func pow_custom (intAlpha: Int, radix: Int, power: Int) -> Int {
    return intAlpha * Int(pow(Double(radix), Double(power)))
}


readLine()
var input: String = readLine()!
var result: Int = Int()
for (i, v) in input.enumerated() {
    var uIntAlpha = UnicodeScalar(String(v))!.value
    var intAlpha = Int(uIntAlpha)-96
    result += pow_custom(intAlpha: intAlpha, radix: 31, power: i)
    
}
print(result)

