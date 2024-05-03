//
//  cardGame.swift
//  bitwise-iOS
//
//  Created by Al Gabriel on 4/28/24.
//

import SwiftUI

struct cardGame: View {
    @Environment(\.dismiss) private var dismiss
    @State var playerCard = "card7"
    @State var cpuCard = "card13"
    
    @State var playerScore = 0
    @State var cpuScore = 0
    
    var body: some View {
        ZStack {
            Image("background-plain")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                Image("logo")
                Spacer()
                HStack {
                    Spacer()
                    Image(playerCard)
                    Spacer()
                    Image(cpuCard)
                    Spacer()
                }
                Spacer()
                
                Button{
                    deal()
                }label: {
                Image("button")
                }
                
                
                Spacer()
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        
                        Text(String(playerScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom, 10.0)
                        Text(String(cpuScore))
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundStyle(.white)
                Spacer()
                Button("Back to Main View"){
                    dismiss()
                }
                .foregroundColor(/*@START_MENU_TOKEN@*/.white/*@END_MENU_TOKEN@*/)
                .buttonStyle(.borderedProminent)
            }
        }
    }
    
    func deal(){
        // random players card
        let playerCardValue = Int.random(in: 2...14)
        playerCard = "card" + String(playerCardValue)
        
        // random cpu card
        let cpuCardValue = Int.random(in: 2...14)
        cpuCard = "card" + String(cpuCardValue)
        
        // update scores
        if playerCardValue > cpuCardValue {
            
            // add 1 to player score
            playerScore += 1
        }
        else if cpuCardValue > playerCardValue {
            // add 1 to cpu score
            cpuScore += 1
        }
    }
}

#Preview {
    cardGame()
}
