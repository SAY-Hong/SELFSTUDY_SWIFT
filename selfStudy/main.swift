//
//  main.swift
//  selfStudy
//
//  Created by 홍세희 on 2023/09/21.
//

import Foundation
//MARK: 딕셔너리 예제1
func mostFrequentValue(dict: [String: Int]) -> Int {
    var valueCount: [Int: Int] = [:]
    for (_, value) in dict {
        if let count = valueCount[value] {
            valueCount[value] = count + 1
        } else {
            valueCount[value] = 1
        }
    }
    
    var maxValue = 0
    var maxKey = 0
    
    //(단, 개수 동일한 경우는 생각 안한다. )
    for (key, value) in valueCount {
        if maxValue < value {
            maxKey = key
            maxValue = value
        }
    }
    return maxKey
}

let dict1 = ["a": 1, "b": 2, "c": 2, "d": 3, "e": 2]
print(mostFrequentValue(dict: dict1))

//mostFrequentValue(dict: dict1)  // 2
//MARK: 딕셔너리 예제2
func reverseKeyValue(dict: [String: String]) -> [String: String] {
    // 코드를 작성
    var reversedDict: [String: String] = [:]
    for (key, value) in dict {
        reversedDict[value] = key
    }
    return reversedDict
}

let dict2 = ["apple": "red", "banana": "yellow", "grape": "purple"]
let result = reverseKeyValue(dict: dict2)
print(result)

//MARK: 딕셔너리 예제3
func keysWithValue(dict: [String: Int], value: Int) -> [String] {
    // 코드를 작성
    var result: [String] = []
    for (key, value) in dict {
        if value == 2 {
            result.append(key)
        }
    }
    return result
}

let dict3 = ["a": 1, "b": 2, "c": 3, "d": 2, "e": 1]
let result = keysWithValue(dict: dict3, value: 2)
print(result)

//MARK: 딕셔너리 예제4
func dictToString(dict: [String: Any]) -> String {
    var result = ""
    var count = 0
    for (key, value) in dict {
        count += 1
        if count != dict.count {
            result += "\(key):\(value),"
        } else {
            result += "\(key):\(value)"
        }
    }
    return result
}

let dict4: [String: Any] = ["name": "Alice", "age": 20, "gender": "female"]
let result = dictToString(dict: dict4)
print(result)       // age:20,gender:female,name:Alice

//MARK: 딕셔너리 예제5
func sumOfKeysAndValues(dict: [Int: Int]) -> (Int, Int) {
    // 코드를 작성
    var result: (Int, Int) = (0, 0)
    for (key, value) in dict {
        result.0 += key
        result.1 += value
    }
    return result
}

let dict5 = [1: 10, 2: 20, 3: 30]
let result = sumOfKeysAndValues(dict: dict5)
print(result)       // (6, 60)

//MARK: 딕셔너리 예제6
let person: [String: Any] = ["name": "Kim", "age": 25, "job": "programmer"]
var result: Any = ""
for (key, value) in person {
    if key == "name" {
        result = value
    }
}
print(result)

//MARK: 딕셔너리 예제7
let fruit = ["apple": 3, "banana": 5, "orange": 2]
//for (key, value) in fruit {
//    print(key, value)
//}
var keyArray: [String] = []
var valueArray: [Int] = []

for (key, value) in fruit {
    keyArray.append(key)
    valueArray.append(value)
}

print(keyArray)
print(valueArray)

let zipExample = zip(keyArray, valueArray)
for (i, j) in zipExample {
    print("\(i) : \(j)")
}
