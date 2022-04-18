//: [Previous](@previous)
//import Foundation
//var greeting = "Hello, playground"
//: [Next](@next)
var card_num = Array<Int>()
var card_image = Array<String>()
let ch = ["d", "a", "b", "c"]

func SetImageName(cardNum: Int) -> String {
    let num_div = cardNum / 4 + 1
    let num_res = cardNum % 4
    let str = "\(num_div)"+ch[num_res]
    return str
}

func CompareCard(cardA: Int, cardB: Int) {
    var cardA_str = card_image[cardA]
    var cardB_str = card_image[cardB]
    cardA_str.removeLast()
    cardB_str.removeLast()
    if cardA_str == cardB_str {
        print("same")
    } else {
        print("different")
    }
}

func Reload() {
    card_num.shuffle()
}

// creating 48 random numbers
while card_num.count < 45 {
    let intPut = Int.random(in: 1...45)
    if card_num.contains(intPut) == false {
        card_num.append(intPut)
        let strGet = SetImageName(cardNum: intPut)
        card_image.append(strGet)
    }
}
print(card_num)
print(card_image)

CompareCard(cardA: 2, cardB: 5)

//print(sel_a_str)
//
