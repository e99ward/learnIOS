//
//  ContentView.swift
//  helloworld
//
//  Created by edyijung on 2022/03/12.
//

import SwiftUI

struct ContentView: View {
    @State var counter = 0
    var body: some View {
        VStack {
            Text("hello, world").font(.largeTitle)
            Image(systemName: "pencil")
            //
            //}(destination:DetailView()) {
            //        Text("what to say?")
            //}
            Image("flag_korea")
                .resizable()
                .frame(width: 150.0, height: 100.0)
            HStack {
                Text("I love you")
                Image(systemName: "heart")
                    .padding(.all).background(Color.yellow
                                                .blur(radius: /*@START_MENU_TOKEN@*/3.0/*@END_MENU_TOKEN@*/))
            }
            Text("\(counter)").font(.largeTitle)
            HStack {
                Button("Add") {
                    plus()
                }
                Button("Remove") {
                    minus()
                }
            }
        }
    }
    func plus(){
        counter += 1
    }
    func minus(){
        counter -= 1
    }
}

struct DetailView: View {
    var body: some View {
        Text("Hello")
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}
