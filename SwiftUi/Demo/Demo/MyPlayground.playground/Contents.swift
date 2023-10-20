import UIKit

// 예시코드:
func asyncFunction() async -> Int {
    let random = Int.random(in: 1...10)
    return random
}

async let result = asyncFunction()


