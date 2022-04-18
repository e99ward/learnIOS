
struct ContentView: View {
    // variables
    @State var card_num = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48]
    @State var card_image = ["1a", "2a", "2b", "3a", "3b", "3c", "4a", "4b", "4c", "4d", "5a", "5b", "5c", "5d", "1b", "6a", "6b", "6c", "6d", "1c", "1d", "7a", "7b", "7c", "7d", "2c", "2d", "3d", "8a", "8b", "8c", "8d", "9a", "9b", "9c", "9d", "10a", "10b", "10c", "10d", "11a", "11b", "11c", "11d", "12a", "12b", "12c", "12d"]
    //let ch = ["d", "a", "b", "c"]
    @State private var btn_txt = "Start"
    @State private var clicked = false
    @State private var on_que = -1
    @State private var opVal = [1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0,
                    1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0,
                    1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0,
                    1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0,
                    1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0, 1.0]
    @State private var pass = [false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false,
                               false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false, false,]
    
    var body: some View {
        ScrollView {
        VStack {
            HStack {
                Text("How's today's luck?").padding().font(.largeTitle)
                Button(btn_txt) {
                    card_image.shuffle()
                    btn_txt = "Resume"
                }.buttonStyle(.bordered)
            }
        }
        VStack {
            Image(card_image[0])
                .resizable().scaledToFit()
                .frame(width: 80)
                .padding(.bottom, -10.0)
            //}
            HStack {
                Image(card_image[1]).resizable().scaledToFit()
                Image(card_image[2]).resizable().scaledToFit()
            }
            .frame(width: 80*2)
            .padding(.vertical, -10.0)
            HStack {
                Image(card_image[3]).resizable().scaledToFit()
                Image(card_image[4]).resizable().scaledToFit()
                Button(action: {
                    pass[5] = ImageClicked(cardNum: 5)
                    if pass[5] {
                        print("call returned true")
                        opVal[5] = 0.05
                    }
                }, label: {Image(card_image[5]).resizable().scaledToFit().opacity(opVal[5])}).disabled(pass[5])
                //Image("3c").resizable().scaledToFit()//String(num44)+c//==33
            }
            .frame(width: 80*3)
            .padding(.vertical, -10.0)
            HStack {
                Image(card_image[6]).resizable().scaledToFit()
                Image(card_image[7]).resizable().scaledToFit()
                Image(card_image[8]).resizable().scaledToFit()
                Image(card_image[9]).resizable().scaledToFit()
            }
            .frame(width: 80*4)
            .padding(.vertical, -10.0)
            HStack {
                Image(card_image[10]).resizable().scaledToFit()
                Image(card_image[11]).resizable().scaledToFit()
                Image(card_image[12]).resizable().scaledToFit()
                Image(card_image[13]).resizable().scaledToFit()
                Image(card_image[14]).resizable().scaledToFit()
            }
            .frame(width: 80*5)
            .padding(.vertical, -10.0)
            HStack {
                Image("7a").resizable().scaledToFit()
                Image("7b").resizable().scaledToFit()
                Image("7c").resizable().scaledToFit()
                Image("8c").resizable().scaledToFit()
                Image("8a").resizable().scaledToFit()
                Image("8b").resizable().scaledToFit()
            }
            .frame(width: 80*6)
            .padding(.vertical, -10.0)
            HStack {
                Image("9a").resizable().scaledToFit()
                Image("9b").resizable().scaledToFit()
                Image("9c").resizable().scaledToFit()
                Image("10c").resizable().scaledToFit()
                Image("10a").resizable().scaledToFit()
                Image("10b").resizable().scaledToFit()
                Image("10d").resizable().scaledToFit()
            }
            .frame(width: 80*7)
            .padding(.vertical, -10.0)
            HStack {
                Image("11a").resizable().scaledToFit()
                Image("11b").resizable().scaledToFit()
                Image("11c").resizable().scaledToFit()
                Image("11d").resizable().scaledToFit()
                Image("12a").resizable().scaledToFit()
                Image("12b").resizable().scaledToFit()
                Image("12c").resizable().scaledToFit()
                Image("12d").resizable().scaledToFit()
            }
            .frame(width: 80*8)
            .padding(.vertical, -10.0)
            HStack {
                Image("11a").resizable().scaledToFit()
                Image("11b").resizable().scaledToFit()
                Image("11c").resizable().scaledToFit()
                Image("11d").resizable().scaledToFit()
                Image("12a").resizable().scaledToFit()
                Image("12b").resizable().scaledToFit()
                Image("12c").resizable().scaledToFit()
                Image("12d").resizable().scaledToFit()
                Image("12d").resizable().scaledToFit()
            }
            .frame(width: 80*9)
            .padding(.vertical, -10.0)
        }
        VStack {
            HStack {
                Image("11a").resizable().scaledToFit()
                Image("11b").resizable().scaledToFit()
                Image("11c").resizable().scaledToFit()
            }
            .frame(width: 80*3)
            .padding(.vertical, 50.0)
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
            print("one card selected")
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
}

struct InnerCircleView: View {
    var body: some View {
        Image("00").resizable().scaledToFit()
            .frame(width: 80)
        Circle()
            .fill(Color.green)
            .frame(width: 40, height: 40, alignment: .center)
    }
}