/*
//: A UIKit based Playground for presenting user interface
  
import UIKit
import PlaygroundSupport

class MyViewController : UIViewController {
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white

        let label = UILabel()
        label.frame = CGRect(x: 150, y: 200, width: 200, height: 20)
        label.text = "Hello World!"
        label.textColor = .black
        
        view.addSubview(label)
        self.view = view
    }
}
// Present the view controller in the Live View window
PlaygroundPage.current.liveView = MyViewController()
*/

import CoreFoundation

// import Foundation
let a = 0
let b = true

if b {
    print(a)
} else {
    print("try again")
}
// list
var beatles = ["John", "Paul", "George", "Ringo"]
let fisrtBeatle = beatles[0]
print("Beatels member \(beatles[2])")
var scores = Array<Int>()
var intPut = Int()
//intPut = Int.random(in: 1...10)
while scores.count < 45 {
    intPut = Int.random(in: 1...45)
    if scores.contains(intPut) == false {
        scores.append(intPut)
    }
}
print(scores)
// loop
for i in 1...9 {
    for j in 1...i {
        print("loop at i:\(i) and j:\(j)")
        print(scores.popLast() ?? "size doesn't match")
    }
}
print(scores)
// dictionary
let singer = ["name": "Taylor Swift", "location": "Nashville"]
print(singer["name", default: "unknown"])
// set
var actors = Set<String>()
actors.insert("Danzel Washington")
actors.insert("Tom Cruise")
actors.insert("Nicolas Cage")
print(actors)
// enums
enum Weekday {
    case monday
    case tuesday
    case wednesday
    case thursday
    case friday
}
var day = Weekday.monday
if day == .wednesday || day == .friday {
    print("go for work")
}
let age = 18
let canVote = age >= 18 ? "Yes" : "No"

// find the two multiple
let number1 = 4
let number2 = 7
var multiple = [Int]()
for i in 1...1000000 {
    if i.isMultiple(of: number1) && i.isMultiple(of: number2) {
        multiple.append(i)
        if multiple.count == 10 {
            break
        }
    }
}
print(multiple)

// functiuons
func printTimesTable(for number: Int, end: Int = 12) {
    for i in 1...end {
        print("\(i) x \(number) is \(i*number)")
    }
}
printTimesTable(for: 5, end: 12)

func getUser() -> (String, String) {
    (firstName: "Taylor", lastName: "Swift")
}
let (fn, ln) = getUser()
print("Name: \(fn) \(ln)")

// error
enum PasswordError: Error {
    case short, obvious
}
func checkPassword(_ password: String) throws -> String {
    if password.count < 5 { throw PasswordError.short }
    if password == "12345" { throw PasswordError.obvious }
    if password.count < 8 {
        return "OK"
    } else if password.count < 10 {
        return "Great"
    } else {
        return "Excellent"
    }
}
let string = "12345"
do {
    let result = try checkPassword(string)
    print("Password rating: \(result)")
} catch PasswordError.short {
    print("There was an error: short")
} catch PasswordError.obvious {
    print("There was an error: obvious")
}
//do {
  //  try some
