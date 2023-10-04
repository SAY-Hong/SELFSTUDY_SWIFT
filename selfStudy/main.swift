//
//  main.swift
//  selfStudy
//
//  Created by 홍세희 on 2023/09/21.
//

import Foundation
//MARK: -스택 예제1
func stack(_ char: String) -> Bool {
    var stack = [Character]()
    
    for n in char{
        if n == "(" || n == "[" || n == "{" {
            stack.append(n)
        } else {
            if stack.isEmpty {
                return false
            }
            let top = stack.popLast()
            if (n == ")" && top != "(") || (n == "]" && top != "[") || (n == "}" && top != "{") {
                return false
            }
        }
    }
    return stack.isEmpty
}

print(stack("()()"))
print(stack("({[}])"))
print(stack("())("))
print(stack("({}[()]())"))
print(stack("("))
print(stack("({}[()]())"))

//MARK: -스택 예제2
func postfixNotation(_ char: String) -> Int{
    let arr = char.split(separator: " ")
    var stack = [Int]()
    for i in 0...arr.count - 1 {
        if arr[i] != "+" && arr[i] != "-" && arr[i] != "*" && arr[i] != "/"{
            stack.append(Int(arr[i])!)
        } else {
            var op2 = stack.popLast()!
            var op1 = stack.popLast()!
 
            switch arr[i] {
            case "+": stack.append(op1 + op2);
            case "-": stack.append(op1 - op2);
            case "*": stack.append(op1 * op2);
            case "/": stack.append(op1 / op2);
            default: print("")
            }
        }
    }
    return stack.popLast()!
}

print(postfixNotation("2 3 + 4 *"))

//MARK: -스택 예제3 (수정하기)
/*func infixNotation(_ char: String) -> Int{
    let arr = char.split(separator: " ")
    var totalarray: [String] = []
    var opStack = [String]()
    for i in 0...arr.count - 1 {
        if arr[i] != "(" && arr[i] != ")" && arr[i] != "+" && arr[i] != "-" && arr[i] != "*" && arr[i] != "/"{
            totalarray.append(String(arr[i]))
        } else {
            opStack.append(String(arr[i]))
            switch arr[i] {
            case "(": opStack.append(String(arr[i]))
            case ")":
                while true {
                    
                }
            }
        }
        
    }
}

print(infixNotation("( 2 + 3 ) * 4"))*/

