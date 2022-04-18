//
//  ContentView.swift
//  RSP-game
//
//  Created by edyijung on 2022/03/14.
//

import SwiftUI

struct ContentView: View {
    @State private var cpu_hand = "left-1"
    @State private var your_hand = "right-1"
    @State private var score_cpu = 0
    @State private var score_you = 0
    @State private var comm_label = "시작"
    
    var body: some View {
        Spacer()
        Text("가위바위보")
            .padding().font(.largeTitle)
        HStack {
            Image(cpu_hand)
            Image(your_hand)
        }
        Spacer()
        HStack {
            Button("가위\n +3"){
                ScoreCase1()
            }.padding(.horizontal)
            Button("바위\n +1"){
                ScoreCase2()
            }.padding(.horizontal)
            Button("보\n +5"){
                ScoreCase3()
            }.padding(.horizontal)
        }
        Spacer()
        Text(comm_label)
        Spacer()
        HStack {
            Spacer()
            VStack {
                Text("CPU").font(.headline).padding(.bottom)
                Text("\(score_cpu)").font(.largeTitle)
            }
            Spacer()
            VStack {
                Text("You").font(.headline).padding(.bottom)
                Text("\(score_you)").font(.largeTitle)
            }
            Spacer()
        }
        Spacer()
    }
    
    func ScoreCase1() {
        let cpuRand = Int.random(in: 1...3)
        cpu_hand = "left-" + String(cpuRand)
        your_hand = "right-1"
        switch cpuRand {
        case 1:
            print("even")
        case 2:
            score_cpu += 3
            score_you -= 1
            comm_label = "You lose"
        case 3:
            score_cpu -= 1
            score_you += 3
            comm_label = "You win!"
        default:
            print("even")
        }
    }
    
    func ScoreCase2() {
        let cpuRand = Int.random(in: 1...3)
        cpu_hand = "left-" + String(cpuRand)
        your_hand = "right-2"
        switch cpuRand {
        case 1:
            score_cpu -= 1
            score_you += 1
            comm_label = "You win!"
        case 2:
            print("even")
        case 3:
            score_cpu += 1
            score_you -= 1
            comm_label = "You lose"
        default:
            print("even")
        }
    }
    
    func ScoreCase3() {
        let cpuRand = Int.random(in: 1...3)
        cpu_hand = "left-" + String(cpuRand)
        your_hand = "right-3"
        switch cpuRand {
        case 1:
            score_cpu += 5
            score_you -= 1
            comm_label = "You lose"
        case 2:
            score_cpu -= 1
            score_you += 5
            comm_label = "You win!"
        default:
            print("even")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
