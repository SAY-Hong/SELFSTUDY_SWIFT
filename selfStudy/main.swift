//
//  main.swift
//  selfStudy
//
//  Created by 홍세희 on 2023/09/21.
//

import Foundation
//MARK: -재귀함수 예제1
/*func count(_ a: [Int]) -> Int {
    if a.isEmpty {
        return 0
    }else{
        print(type(of: Array(a.dropFirst())))
        print(type(of: a.dropFirst()))
        return 1 + count(Array(a.dropFirst()))
    }
}

print(count([1, 2, 3]))*/

//MARK: -재귀함수 예제2
/*func findMax(_ a: [Int]) -> Int {
    if a.isEmpty {
        return 0
    } else {
        return findMax(<#T##a: [Int]##[Int]#>)
    }
}*/

//MARK: -재귀함수 예제3 (일반 함수 버전 - 배열 출력)
/*func fibbo(_ n: Int) -> [Int] {
    var arr: [Int] = []
    if n <= 1 {
        arr.append(1)
        return arr
    } else if n == 2 {
        arr.append(1)
        return arr
    } else {
        arr = [1, 1]
        for _ in 2...n-1 {
            var number = arr[arr.count - 1] + arr[arr.count - 2]
            arr.append(number)
        }
        return arr
    }
}

print(fibbo(_: 10))*/

//MARK: -재귀함수 예제3 (일반 함수 버전 - 원하는 항 출력)
/*func fibbo(_ n: Int) -> Int {
    if n == 0 {
        return 0
    } else if n == 1 {
        return 1
    }
    var n1 = 0
    var n2 = 1
    var result = 0
    
    for _ in 2...n {
        result = n1 + n2
        n1 = n2
        n2 = result
    }
    return result
}

print(fibbo(10))*/

//MARK: -재귀함수 예제4 (재귀함수 버전)
/*func fibbo(_ n: Int) -> Int {
    if n == 0 {
        return 0
    } else if n == 1 {
        return 1
    } else {
        return fibbo(n-1) + fibbo(n-2)
    }
}

var n = 10
print(fibbo(_ : n))*/

//MARK: -퀵 정렬
/*func quicksort(_ a: [Int]) -> [Int]{
    //guard - let으로 a의 원소 개수가 0개 보호
    guard let pivot = a.first else {
        return []
    }
    var left: [Int] = []
    var right: [Int] = []
    
    left = a.filter {$0 < pivot}
    right = a.filter {$0 > pivot}
    
    return quicksort(left) + [pivot] + quicksort(right)
}

print(quicksort([2,7,4,5,6,9,0]))*/

//MARK: -퀵 정렬(for문으로 작성하기)
/*func quickSort(_ a: [Int]) -> [Int] {
    var pivot: Int = 0
    
    if a.count == 0 {
        return []
    } else {
        pivot = a[a.count / 2]
    }
    var left: [Int] = []
    var right: [Int] = []
    
    for i in 0...a.count - 1 {
        if a[i] < pivot {
            left.append(a[i])
        }
        if a[i] > pivot {
            right.append(a[i])
        }
    }
    return quickSort(left) + [pivot] + quickSort(right)
}

print(quickSort([2,7,4,5,6,9,0]))*/

//MARK: append와 insert
/*var array = [1, 2, 2, 3]
array.forEach { value in
    print(value)
}

print("==========")
array.forEach {
    print($0)
}*/

import Foundation

let s1 = "AbcDEfG"
 
for i in s1 {
    if i.isUppercase {
        print(i.lowercased(), terminator: "")
    } else {
        print(i.uppercased(), terminator: "")
    }
}

print(s1)
