//
//  errorcatch.swift
//  selfStudy
//
//  Created by 홍세희 on 2023/10/19.
//

import Foundation
//MARK: 에러 타입 선언하기
//enum FileTransforError: Error {
//    case noConnection
//    case lowBandWidth
//    case fileNotFound
//}
//
//let connectionOk = true
//let connectionSpeed = 30.00
//let fileFound = false
//
//func fileTransfor() throws {
//    guard connectionOk else {
//        throw FileTransforError.noConnection
//    }
//
//    guard connectionSpeed > 30 else {
//        throw FileTransforError.lowBandWidth
//    }
//
//    guard fileFound else {
//        throw FileTransforError.fileNotFound
//    }
//}
//
////MARK: 스로잉 메서드와 함수 호출
//func sendFile() -> String {
//    do {
//        try fileTransfor()
//    } catch FileTransforError.noConnection {
//        //...
//    } catch FileTransforError.fileNotFound {
//        //...
//    } catch FileTransforError.lowBandWidth {
//        //...
//    } catch {
//        //default
//    }
//}


//MARK: 에러 1
enum TemperatureError: Error {
    case invaildTemperature
}

func celsiusFahrenheit(_ fahrenheit: Double) throws -> Double {
    guard fahrenheit > -273.15 else {
        throw TemperatureError.invaildTemperature
    }
    return fahrenheit * 1.8 + 32
}

/*do {
    let fahrenheit = try celsiusFahrenheit(-300) //왜 함수 안에 넣으면 안되냐 ㅆ
    print(fahrenheit)
} catch TemperatureError.invaildTemperature {
    print("Invalid temperature")
}*/

func sendFile() {
    do {
        let fahrenheit = try celsiusFahrenheit(-300) //왜 함수 안에 넣으면 안되냐 ㅆ
        print(fahrenheit)
    } catch TemperatureError.invaildTemperature {
        print("Invalid temperature")
    } catch {
        print("설정된 에러가 아닙니다.")
    }
}

sendFile()


//MARK: 에러 2
let symbols = "!@#$%^&*()_+-=[]{}|;:,./<>?"
enum PasswordError: Error {
    case tooShort
    case missingUppercase
    case missingLowercase
    case missingSymbol
    case missingNumber
}

func validatePassword(password: String) throws {
    var checkNumber = 0
    var checkUpper = 0
    var checkLower = 0
    var checkSymbol = 0
    
    for i in password {
        if i.isNumber {
            checkNumber += 1
        } else if i.isUppercase {
            checkUpper += 1
        } else if i.isLowercase {
            checkLower += 1
        } else if symbols.contains(i) {
            checkSymbol += 1
        }
    }
    
    guard password.count >= 8 else {
        throw PasswordError.tooShort
    }
    guard checkUpper > 0 else {
        throw PasswordError.missingUppercase
    }
    guard checkLower > 0 else {
        throw PasswordError.missingLowercase
    }
    guard checkSymbol > 0 else {
        throw PasswordError.missingSymbol
    }
    guard checkNumber > 0 else {
        throw PasswordError.missingNumber
    }
}

do {
    try validatePassword(password: "abc123")
} catch let error as PasswordError {
    switch error {
    case .tooShort:
        print("Password is too short")
    case .missingNumber:
        print("Password is missing a number")
    case .missingUppercase:
        print("Password is missing an uppercase letter")
    case .missingLowercase:
        print("Password is missing a lowercase letter")
    case .missingSymbol:
        print("Password is missing a symbol")
    }
}

////2번 참고하기
//let symbols = "!@#$%^&*()_+-=[]{}|;:,./<>?"
//    var isMissingUppercase: Bool = false
//    var isMissingLowercase: Bool = false
//    var isNumber: Bool = false
//    var isSymbol: Bool = false
//
//    password.map{$0}.forEach{
//        if $0.isUppercase {
//            isMissingUppercase = true
//        } else if $0.isLowercase {
//            isMissingLowercase = true
//        } else if $0.isNumber {
//            isNumber = true
//        } else if symbols.contains($0) {
//            isSymbol = true
//        }
//    }
//
//
////
//func validatePassword(_ pwd: String) throws {
//    guard pwd.count >= 8 else { throw PasswordError.tooShort }
//    guard pwd.contains(where: { $0.isLowercase }) else { throw PasswordError.missingLowercase }
//    guard pwd.contains(where: { $0.isUppercase }) else { throw PasswordError.missingUppercase }
//    guard pwd.contains(where: {$0.isNumber}) else { throw PasswordError.missingNumber }
//    guard pwd.contains(where: {"!@#$%^&*()_+-=[]{}|;:,./<>?".contains($0)}) else { throw PasswordError.missingSymbol }
//}


//MARK: 에러 3
enum ATMError: Error {
    case negativeAmount
    case insufficientBalance
}

class ATM {
    var balance: Double = 0
    func deposit(amount: Double) -> Bool {
        if amount > 0 {
            balance += amount
            return true
        } else {
            return false
        }
    }

    func withdraw(amount: Double) throws -> Double {
        guard amount > 0 else {
            throw ATMError.negativeAmount
        }
        guard amount < balance else {
            throw ATMError.insufficientBalance
        }
        if amount > 0 && amount <= balance {
            return  (balance - amount)
        } else {
            return balance
        }
    }
}


let atm = ATM()
atm.deposit(amount: 1000)
print(atm.balance)              // 1000.0

do {
    let cash = try atm.withdraw(amount: -10)
    print(cash)                 // 500.0
} catch let error as ATMError {
    switch error {
    case .negativeAmount:
        print("Cannot withdraw a negative amount")
    case .insufficientBalance:
        print("Cannot withdraw more than balance")
    }
}

print(atm.balance)


//MARK: 4번
enum CalculatorError: Error {
    case divisionByZero
}
struct Calculator {
    var result: Double = 0
    mutating func add(_ number: Double) {
        var number = number
        result = result + number
    }
    mutating func subtract(_ number: Double) {
        var number = number
        result = result - number
    }
    mutating func multiply(_ number: Double) {
        var number = number
        result = result * number
    }
    mutating func divide(_ number: Double) throws {
        var number = number
        guard result != 0 else {
            throw CalculatorError.divisionByZero
        }
        result = result / number
        
    }
}

var calculator = Calculator()
calculator.add(10)
print(calculator.result)        // 10.0

calculator.subtract(3)
print(calculator.result)        // 7.0

calculator.multiply(2)
print(calculator.result)        // 14.0

do {
    try calculator.divide(0)
    print(calculator.result)    // 2.0
} catch CalculatorError.divisionByZero {
    print("Cannot divide by zero")
}

//MARK: 에러 5번
enum LibraryError: Error {
    case bookNotFound
    case limitExceeded
}

class Library {
    var books: [String]
    var limit: Int = 3
    
    init(books: [String], limit: Int) {
        self.books = books
        self.limit = limit
    }
    func borrow(book: String) throws -> String {
        guard books.contains(book) else {
            throw LibraryError.bookNotFound
        }
        guard books.count < limit else {
            throw LibraryError.limitExceeded
        }
        return "\(book)을 대출했습니다."
    }
}

let library = Library(books: ["Harry Potter", "The Little Prince", "The Hobbit"], limit: 4)
do {
    let result = try library.borrow(book: "The Little Prince")
    print(result)
} catch LibraryError.bookNotFound {
    print("책을 찾을 수 없습니다.")
} catch LibraryError.limitExceeded {
    print("대출 한도를 초과했습니다.")
}


