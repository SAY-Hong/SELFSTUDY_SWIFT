//
//  main.swift
//  selfStudy
//
//  Created by 홍세희 on 2023/09/21.
//

import Foundation
//MARK: -스택 예제1
/*func stack(_ char: String) -> Bool {
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
print(stack("({}[()]())"))*/

//MARK: -스택 예제2
/*func postfixNotation(_ char: String) -> Int{
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

print(postfixNotation("2 3 + 4 *"))*/

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

//MARK: -스택 예제3 (답안 ver)
func infixToPostfix(_ expression: String) -> String {
    // 결과를 저장하는 문자열
    var result = ""
    // 연산자를 저장할 스택
    var stack: [String] = []
    // 입력된 수식을 공백으로 구분하여 배열로 저장
    let tokens = expression.split(separator: " ")
    // 배열의 각 요소에 대해 반복
    for token in tokens {
        // 요소가 숫자라면 결과를 추가
        if let _ = Int(token) {
            result += token + " "
        }
        // 요소가 여는 괄호면 스택에 삽입
        else if token == "(" {
            stack.append(String(token))
        }
        // 요소가 닫는 괄호면 스택에서 여는 괄호를 만날 때 까지 팝하고 결과에 추가
        else if token == ")" {
            while let top = stack.popLast(), top != "(" {
                result += top + " "
            }
        }
        // 요소가 연산자라면.... 스택에 추가
        else {
            stack.append(String(token))
        }

        //print(token, stack, result)
    }

    // 스택에 남아있는 연산자를 모두 팝하여 결과에 추가
    while let top = stack.popLast() {
        result += top + " "
    }

    return result
}

print( infixToPostfix("2 + ( ( 4 + 6 ) / 2 )") )  // -> "2 3 + 4 *"

//MARK: -버블정렬
var arr = [2, 5, 6, 7, 1, 3, 9, 0]

func bubbleSort(_ inputArray: [Int]) -> [Int] {
    var arr = inputArray
    for i in (0..<arr.count).reversed() {
        for j in 0..<i {
            if arr[j] > arr[j + 1] {
                var temp = arr[j]
                arr[j] = arr[j + 1]
                arr[j + 1] = temp
            }
        }
    }
    return arr
}

print(bubbleSort(arr))
