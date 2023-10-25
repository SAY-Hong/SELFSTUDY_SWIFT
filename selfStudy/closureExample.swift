//
//  closureExample.swift
//  selfStudy
//
//  Created by 홍세희 on 2023/10/25.
//

import Foundation
//MARK: 클로저 예제1
//Int

//MARK: 클로저 예제2
//let numbers = [1, 2, 3, 4, 5]
///*let result = numbers.map { num -> Int in
//    return num * 10
//}*/
//
///*let increasNumbers: (Int) -> Int = { $0 * 10 }
//let result = numbers.map(increasNumbers)
//print(result)*/

//print(result)
//MARK: 클로저 예제3
//let numbers = [1, 2, 3, 4, 5]
//let result = numbers.filter { $0 % 2 != 0 }
//print(result)
//MARK: 클로저 예제4
//let numbers = [1, 2, 3, 4, 5]
//let result = numbers.reduce(0) { $0 + $1 }
//print(result)

//MARK: 클로저 예제5
//let numbers = [1, 2, 3, 4, 5]
//let result = numbers.map { num in
//    String(num)
//}
//print(result)

//MARK: 맵, 필터, 리듀스 예제 01
//func sumOfSquaresOfOdds(array: [Int]) -> Int {
//    // 여기에 코드를 작성
//    return array.reduce(0, +)
//}
//
//let array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
//print(sumOfSquaresOfOdds(array: array))

//MARK: 맵, 필터, 리듀스 예제 02
// 예시코드
//func reverseWithoutVowels(string: String) -> String {
//    // 여기에 코드를 작성
//    let noContain = ["A", "I", "U", "E", "O"]
//    let reverseWords = String(string.uppercased().filter { !noContain.contains(String($0)) }.reversed())
//
//    return reverseWords
//}
//
//print(reverseWithoutVowels(string: "Hello World"))

/*
 //ver2
 func reverseWithoutVowels(string: String) -> String {
     let vowels = "AIOEU"
     return string.map{$0.isLowercase ? $0.uppercased() : String($0)}.filter{!vowels.contains($0)}.reversed().joined()
 }
*/

/*
//ver3
 func reverseWithoutVowels(string: String) -> String {
     let vowels = "aeiouAEIOU"
     return String(string.filter { !vowels.contains($0) }
                         .uppercased()
                         .reversed()
             )
 }
*/

//MARK: 맵, 필터, 리듀스 예제 03
//예시코드
//func sumOfKeysWithEvenValues(dictionary: [String: Int]) -> Int {
//    //key -> 아스키코드 변환해서 합 구하기
//    let evenValue = dictionary.filter { $0.value % 2 == 0}.reduce(0) { $0 + Character($1.key).asciiValue! } //asciiValue -> 옵셔널 처리, Character 변환
//
//    //value -> 값들의 합 구하기
//    /*let evenValue = dictionary.filter { $0.value % 2 == 0}.reduce(0) { $0 + $1.value }*/
//    return Int(evenValue)
//}
//
//let dictionary = ["a": 1, "b": 2, "c": 3, "d": 4, "e": 5]
//print(sumOfKeysWithEvenValues(dictionary: dictionary))

//MARK: 맵, 필터, 리듀스 예제 04
//func differenceBetweenMaxAndMin(array: [Int]) -> Int {
//    var result = 0
//    let sortArray = array.sorted()
//    result = sortArray[0] + sortArray[sortArray.count - 1]
//    return result
//}
//
//let array = [20, 10, 30, 40, 50]
//print(differenceBetweenMaxAndMin(array: array))

////ver2
//func differenceBetweenMaxAndMin(array: [Int]) -> Int {
//    // 여기에 코드를 작성
//    var result = array.reduce(array.max()!) { $0 + $1 } - array.reduce(array.min()!) { $0 + $1 }
//    return result
//}
//
//let array = [10, 20, 30, 40, 50]
//print( differenceBetweenMaxAndMin(array: array) )   // 40
//
//array.reduce(into: [:]){ $0.updateValue(($0[$1] ?? 0)+1, forKey: $1)}

//MARK: 맵, 필터, 리듀스 예제 05
// 예시코드
//func countElements(array: [String]) -> [String: Int] {
//    // 여기에 코드를 작성
//    var results = array.reduce(into: [:]) { counts, letter in
//        counts[letter, default: 0] += 1
//    }
//    /*array.forEach { char in
//        guard let key = counts[char] else {
//            return counts[char] = 1
//        }
//        counts[char] = key + 1
//    }*/
//    return results
//}
//let array = ["a", "b", "a", "c", "b", "d"]
//print(countElements(array: array))


//MARK: 맵, 필터, 리듀스 예제 06
//func mostFrequentElement(array: [String]) -> String {
//    let resultDict = array.reduce(into: [:]) { $0[$1, default: 0] += 1 }.max(by: { $0.value < $1.value})!.key
//    /*array.forEach {
//        resultDict[$0] = (resultDict[$0] ?? 0) + 1
//    }
//    var result = resultDict.max(by: { $0.value < $1.value })!.key*/
//    return resultDict
//}
//
//let array = ["a", "b", "a", "c", "b", "d"]
//print(mostFrequentElement(array: array))

//MARK: 맵, 필터, 리듀스 예제 07
// 예시코드
//func addStars(array: [String]) -> [String] {
//    // 여기에 코드를 작성
//    let newArray = array.map { "*" + $0 + "*"}
//    return newArray
//}
//let array = ["a", "b", "c"]
//print(addStars(array: array))

//MARK: 맵, 필터, 리듀스 예제 08
// 예시코드
//func sumOfMultiplesOfThree(array: [Int]) -> Int {
//    // 여기에 코드를 작성
//    var result = array.filter { $0 % 3 == 0}.reduce(0, +)
//    return result
//}
//let array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
//print(sumOfMultiplesOfThree(array: array))

//MARK: 맵, 필터, 리듀스 예제 09
//TODO: flatmap 사용해보기
//func repeatTwice(array: [String]) -> [String] {
//    // 여기에 코드를 작성
//    var result = array.map { "\($0)\($0)"}
//    return result
//}
//let array = ["a", "b", "c"]
//print(repeatTwice(array: array))

//MARK: 맵, 필터, 리듀스 예제 10
//func lengthsOfElements(array: [String]) -> [Int] {
//    // 여기에 코드를 작성
//    var result = array.map { $0.count }
//    return result
//}
//
//let array = ["apple", "banana", "cherry"]
//print(lengthsOfElements(array: array))

//MARK: 맵, 필터, 리듀스 예제 11
//func countVowels(_ array: String) -> Int {
//    let ahdma = ["a", "e", "i", "o", "u"]
//    var result = word.filter { ahdma.contains(String($0)) }.count
//    return result
//}
//
//let word = "swift"
//let vowelCount = countVowels(word)
//print(vowelCount) // 1

//MARK: 맵, 필터, 리듀스 예제 12
//func countAlphabets(_ words: String) -> [Character: Int]{
//    var dict = words.filter { $0.isLetter }.reduce(into: [:]) {
//        $0[$1, default: 0] += 1
//    }
//     return dict
//}
//let word = "Hello2World!!"
//let alphabetCount = countAlphabets(word)
//print(alphabetCount)  // ["e": 1, "o": 2, "r": 1, "H": 1, "W": 1, "d": 1, "l": 3]

//MARK: 맵, 필터, 리듀스 예제 13
//func capitalize(_ words: String) -> String {
//    var wordArray = words.split(separator: " ")
//    //prefix와 suffix -> map 안에서 문자열 더하기식의 표현도 가능하다는거 자꾸 까먹지 말기(어제 했자나..)
//    var wordsArray = wordArray.map { $0.prefix(1).uppercased() + $0.suffix($0.count - 1)}.joined(separator: " ")
//    return wordsArray
//}
//let sentence = "this is a test"
//let capitalizedSentence = capitalize(sentence)
//print(capitalizedSentence)      // "This Is A Test"

//MARK: 맵, 필터, 리듀스 예제 14
//func reverse(_ array: [Int]) -> [Int] {
//    /*var index = [0, 1, 2, 3, 4]
//    var result = index.map { array[array.count - 1 - $0] }*/ // 버전1
//
//    var result = (0..<array.count).map { array[array.count - 1 - $0] } // 버전2
//
//    //var result = numbers.reduce([]) { [$1] + $0 } // 버전3
//    return result
//}
//let numbers = [1, 3, 4, 2, 5]
//let reversedNumbers = reverse(numbers)
//print(reversedNumbers)      // [5, 2, 4, 3, 1]

//MARK: 맵, 필터, 리듀스 예제 15
//func uppercase(_ words: String) -> String {
//    var result = words.filter { $0.isLowercase }.uppercased()
//    return result
//}
//let word = "swift"
//let uppercasedWord = uppercase(word)
//print(uppercasedWord)       // "SWIFT"

//MARK: 맵, 필터, 리듀스 예제 16
//func removeSpaces(_ words: String) -> String {
//    return words.filter { $0 != " "}
//}
//let sentence = "This is a test"
//let noSpaceSentence = removeSpaces(sentence)
//print(noSpaceSentence)      // "Thisisatest"
