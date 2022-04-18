//
//  ContentView.swift
//  LuckyPyramid
//
//  Created by edyijung on 2022/03/17.
//

import SwiftUI

struct ContentView: View {
    // variables
    @State private var btn_txt = "Start"
    @State private var clicked = false
    @State private var on_que = -1
    @State private var card_image = ["1a", "2a", "2b", "3a", "3b", "3c", "4a", "4b", "4c", "4d", "5a", "5b", "5c", "5d", "1b", "6a", "6b", "6c", "6d", "1c", "1d", "7a", "7b", "7c", "7d", "2c", "2d", "3d", "8a", "8b", "8c", "8d", "9a", "9b", "9c", "9d", "10a", "10b", "10c", "10d", "11a", "11b", "11c", "11d", "12a", "12b", "12c", "12d"]
    @State private var op_val = [1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]
    @State private var sum_op_val = 10.0
    @State private var pass = [false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false]
    @State private var hidden = [false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false]

    // main view
    var body: some View {
        ScrollView {
        VStack {
            HStack {
                Text("How's today's luck?").padding().font(.largeTitle)
                Button(btn_txt) {
                    card_image.shuffle()
                    for i in 0...47 {
                        op_val[i] = 1.0
                        pass[i] = false
                        hidden[i] = false
                    }
                    for i in 1...35 {
                        hidden[i] = true
                    }
                    btn_txt = "Resume"
                    sum_op_val = 10.0
                }.buttonStyle(.bordered)
            }
        }
        VStack {
            // first line
            HStack {
                Button(action: {
                    pass[0] = ImageClicked(cardNum: 0)
                    if pass[0] {
                        MatchingPassed(cardNum: 0)
                    }
                }, label: {Image(card_image[0]).resizable().scaledToFit()
                    .opacity(op_val[0])}).disabled(pass[0])
                    .overlay{if clicked && on_que == 0 {Selected()}}
            }.frame(width: 80).padding(.bottom, -20.0)
            // second line
            HStack {
                ForEach (1..<3) { j in
                    Button(action: {
                        pass[j] = ImageClicked(cardNum: j)
                        if pass[j] {
                            MatchingPassed(cardNum: j)
                        }
                    }, label: {Image(card_image[j]).resizable().scaledToFit()
                        .opacity(op_val[j])}).disabled(pass[j])
                        .overlay{if clicked && on_que == j {Selected()}}
                        .overlay{if hidden[j] {BacksideView()}}
                    }
            }.frame(width: 80*2).padding(.bottom, -20.0)
            // third line
            HStack {
                ForEach (3..<6) { j in
                    Button(action: {
                        pass[j] = ImageClicked(cardNum: j)
                        if pass[j] {
                            MatchingPassed(cardNum: j)
                        }
                    }, label: {Image(card_image[j]).resizable().scaledToFit()
                        .opacity(op_val[j])}).disabled(pass[j])
                        .overlay{if clicked && on_que == j {Selected()}}
                        .overlay{if hidden[j] {BacksideView()}}
                    }
            }.frame(width: 80*3).padding(.bottom, -20.0)
            // fourth line
            HStack {
                ForEach (6..<10) { j in
                    Button(action: {
                        pass[j] = ImageClicked(cardNum: j)
                        if pass[j] {
                            MatchingPassed(cardNum: j)
                        }
                    }, label: {Image(card_image[j]).resizable().scaledToFit()
                        .opacity(op_val[j])}).disabled(pass[j])
                        .overlay{if clicked && on_que == j {Selected()}}
                        .overlay{if hidden[j] {BacksideView()}}
                    }
            }.frame(width: 80*4).padding(.bottom, -20.0)
            // fifth line
            HStack {
                ForEach (10..<15) { j in
                    Button(action: {
                        pass[j] = ImageClicked(cardNum: j)
                        if pass[j] {
                            MatchingPassed(cardNum: j)
                        }
                    }, label: {Image(card_image[j]).resizable().scaledToFit()
                        .opacity(op_val[j])}).disabled(pass[j])
                        .overlay{if clicked && on_que == j {Selected()}}
                        .overlay{if hidden[j] {BacksideView()}}
                    }
            }.frame(width: 80*5).padding(.bottom, -20.0)
            // sixth line
            HStack {
                ForEach (15..<21) { j in
                    Button(action: {
                        pass[j] = ImageClicked(cardNum: j)
                        if pass[j] {
                            MatchingPassed(cardNum: j)
                        }
                    }, label: {Image(card_image[j]).resizable().scaledToFit()
                        .opacity(op_val[j])}).disabled(pass[j])
                        .overlay{if clicked && on_que == j {Selected()}}
                        .overlay{if hidden[j] {BacksideView()}}
                    }
            }.frame(width: 80*6).padding(.bottom, -20.0)
            // seventh line
            HStack {
                ForEach (21..<28) { j in
                    Button(action: {
                        pass[j] = ImageClicked(cardNum: j)
                        if pass[j] {
                            MatchingPassed(cardNum: j)
                        }
                    }, label: {Image(card_image[j]).resizable().scaledToFit()
                        .opacity(op_val[j])}).disabled(pass[j])
                        .overlay{if clicked && on_que == j {Selected()}}
                        .overlay{if hidden[j] {BacksideView()}}
                    }
            }.frame(width: 80*7).padding(.bottom, -20.0)
            // eighth line
            HStack {
                ForEach (28..<36) { j in
                    Button(action: {
                        pass[j] = ImageClicked(cardNum: j)
                        if pass[j] {
                            MatchingPassed(cardNum: j)
                        }
                    }, label: {Image(card_image[j]).resizable().scaledToFit()
                        .opacity(op_val[j])}).disabled(pass[j])
                        .overlay{if clicked && on_que == j {Selected()}}
                        .overlay{if hidden[j] {BacksideView()}}
                    }
            }.frame(width: 80*8).padding(.bottom, -20.0)
            // nineth line
            HStack {
                ForEach (36..<45) { j in
                    Button(action: {
                        pass[j] = ImageClicked(cardNum: j)
                        if pass[j] {
                            MatchingPassed(cardNum: j)
                        }
                    }, label: {Image(card_image[j]).resizable().scaledToFit()
                        .opacity(op_val[j])}).disabled(pass[j])
                        .overlay{if clicked && on_que == j {Selected()}}
                    }
            }.frame(width: 80*9).padding(.bottom, -20.0)
        }.overlay{if sum_op_val < 4.9 {CompleteView()}}
        VStack {
            HStack {
                ForEach (45..<48) { j in
                    Button(action: {
                        pass[j] = ImageClicked(cardNum: j)
                        if pass[j] {
                            MatchingPassed(cardNum: j)
                        }
                    }, label: {Image(card_image[j]).resizable().scaledToFit()
                        .opacity(op_val[j])}).disabled(pass[j])
                        .overlay{if clicked && on_que == j {Selected()}}
                    }
            }.frame(width: 80*3).padding(.vertical, 50.0)
        }
        }
    }
    
    func ImageClicked(cardNum: Int) -> Bool {
        //true: compare two card
        //false: put clicked card on que
        var isSame = false
        if clicked {
            isSame = CompareCard(cardA: on_que, cardB: cardNum)
            clicked = false
            print("comparing two cards")
        } else {
            on_que = cardNum
            clicked = true
            print("a card selected")
        }
        //clicked = clicked == true ? false : true
        return isSame
    }
    
    func CompareCard(cardA: Int, cardB: Int) -> Bool {
        var cardA_str = card_image[cardA]
        var cardB_str = card_image[cardB]
        cardA_str.removeLast()
        cardB_str.removeLast()
        if cardA_str == cardB_str {
            print("same")
            return true
        } else {
            print("different")
            return false
        }
    }
    
    func MatchingPassed(cardNum: Int) {
        print("two cards were matched")
        if cardNum == on_que {
            op_val[on_que] = 0.8
            pass[on_que] = false
        } else {
            op_val[cardNum] = 0.1
            op_val[on_que] = 0.1
            pass[on_que] = true
        }
        sum_op_val = op_val.reduce(0, +)
        // unveil the next card
        UnveilCard(cardNum: cardNum)
        UnveilCard(cardNum: on_que)
    }
    
    func UnveilCard(cardNum: Int) {
        print("unveil next card")
        switch cardNum {
        case 0:
            hidden[1] = false
            hidden[2] = false
        case 1:
            run_case_left(my: 1, ival: 0, jval: 3)
        case 2:
            run_case_right(my: 2, ival: 0, jval: 5)
        case 3:
            run_case_left(my: 3, ival: 1, jval: 6)
        case 4:
            run_case_middle(my: 4, ival: 1, jval: 7)
        case 5:
            run_case_right(my: 5, ival: 2, jval: 9)
        case 6:
            run_case_left(my: 6, ival: 3, jval: 10)
        case 7:
            run_case_middle(my: 7, ival: 3, jval: 11)
        case 8:
            run_case_middle(my: 8, ival: 4, jval: 12)
        case 9:
            run_case_right(my: 9, ival: 5, jval: 14)
        case 10:
            run_case_left(my: 10, ival: 6, jval: 15)
        case 11:
            run_case_middle(my: 11, ival: 6, jval: 16)
        case 12:
            run_case_middle(my: 12, ival: 7, jval: 17)
        case 13:
            run_case_middle(my: 13, ival: 8, jval: 18)
        case 14:
            run_case_right(my: 14, ival: 9, jval: 20)
        case 15:
            run_case_left(my: 15, ival: 10, jval: 21)
        case 16:
            run_case_middle(my: 16, ival: 10, jval: 22)
        case 17:
            run_case_middle(my: 17, ival: 11, jval: 23)
        case 18:
            run_case_middle(my: 18, ival: 12, jval: 24)
        case 19:
            run_case_middle(my: 19, ival: 13, jval: 25)
        case 20:
            run_case_right(my: 20, ival: 14, jval: 27)
        case 21:
            run_case_left(my: 21, ival: 15, jval: 28)
        case 22:
            run_case_middle(my: 22, ival: 15, jval: 29)
        case 23:
            run_case_middle(my: 23, ival: 16, jval: 30)
        case 24:
            run_case_middle(my: 24, ival: 17, jval: 31)
        case 25:
            run_case_middle(my: 25, ival: 18, jval: 32)
        case 26:
            run_case_middle(my: 26, ival: 19, jval: 33)
        case 27:
            run_case_right(my: 27, ival: 20, jval: 35)
        case 28:
            run_case_left(my: 28, ival: 21, jval: 36)
        case 29:
            run_case_middle(my: 29, ival: 21, jval: 37)
        case 30:
            run_case_middle(my: 30, ival: 22, jval: 38)
        case 31:
            run_case_middle(my: 31, ival: 23, jval: 39)
        case 32:
            run_case_middle(my: 32, ival: 24, jval: 40)
        case 33:
            run_case_middle(my: 33, ival: 25, jval: 41)
        case 34:
            run_case_middle(my: 34, ival: 26, jval: 42)
        case 35:
            run_case_right(my: 35, ival: 27, jval: 44)
        case 36:
            if op_val[37] < 1 {
                hidden[28] = false
            }
        case 37:
            run_case_middle_last(my: 37, ival: 28)
        case 38:
            run_case_middle_last(my: 38, ival: 29)
        case 39:
            run_case_middle_last(my: 39, ival: 30)
        case 40:
            run_case_middle_last(my: 40, ival: 31)
        case 41:
            run_case_middle_last(my: 41, ival: 32)
        case 42:
            run_case_middle_last(my: 42, ival: 33)
        case 43:
            run_case_middle_last(my: 43, ival: 34)
        case 44:
            if op_val[43] < 1 {
                hidden[35] = false
            }
        default:
            break
        }
    }
    
    func run_case_left(my: Int, ival: Int, jval: Int) {
        hidden[jval] = false
        if op_val[my+1] < 1 {
            hidden[ival] = false
            hidden[jval+1] = false
        }
    }
    
    func run_case_right(my: Int, ival: Int, jval: Int) {
        hidden[jval] = false
        if op_val[my-1] < 1 {
            hidden[ival] = false
            hidden[jval-1] = false
        }
    }
    
    func run_case_middle(my: Int, ival: Int, jval: Int) {
        if op_val[my-1] < 1 {
            hidden[ival] = false
            hidden[jval] = false
        }
        if op_val[my+1] < 1 {
            hidden[ival+1] = false
            hidden[jval+1] = false
        }
    }
    
    func run_case_middle_last(my: Int, ival: Int) {
        if op_val[my-1] < 1 {
            hidden[ival] = false
        }
        if op_val[my+1] < 1 {
            hidden[ival+1] = false
        }
    }
}

struct BacksideView: View {
    var body: some View {
        Image("00").resizable().scaledToFit().frame(width: 80)
    }
}

struct Selected: View {
    var body: some View {
        Image(systemName: "sparkles")
            .imageScale(.large).foregroundColor(.yellow)
            .frame(width: 75, height: 100, alignment: .topTrailing)
    }
}

struct CompleteView: View {
    var body: some View {
        Text("Congratulation!! \n What a Great Luck Today!!")
            .font(.largeTitle).foregroundColor(.blue)
        Image(systemName: "sparkles")
            .imageScale(.large).foregroundColor(.yellow)
            .frame(width: 300, height: 500, alignment: .topLeading)
        Image(systemName: "sparkles")
            .imageScale(.large).foregroundColor(.yellow)
            .frame(width: 300, height: 500, alignment: .topTrailing)
        Image(systemName: "sparkles")
            .imageScale(.large).foregroundColor(.yellow)
            .frame(width: 300, height: 500, alignment: .bottomLeading)
        Image(systemName: "sparkles")
            .imageScale(.large).foregroundColor(.yellow)
            .frame(width: 300, height: 500, alignment: .bottomTrailing)
        Image(systemName: "sparkles")
            .imageScale(.large).foregroundColor(.yellow)
            .frame(width: 500, height: 300, alignment: .topLeading)
        Image(systemName: "sparkles")
            .imageScale(.large).foregroundColor(.yellow)
            .frame(width: 500, height: 300, alignment: .topTrailing)
        Image(systemName: "sparkles")
            .imageScale(.large).foregroundColor(.yellow)
            .frame(width: 500, height: 300, alignment: .bottomLeading)
        Image(systemName: "sparkles")
            .imageScale(.large).foregroundColor(.yellow)
            .frame(width: 500, height: 300, alignment: .bottomTrailing)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
