// 1343

import Foundation

var inputs = String(readLine()!)


inputs = inputs.replacingOccurrences(of: "XXXX", with: "AAAA")
inputs = inputs.replacingOccurrences(of: "XX", with: "BB")

if inputs.contains("X") {
    print(-1)
} else {
    print(inputs)
}
