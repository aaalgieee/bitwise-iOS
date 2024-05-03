//
//  1.swift
//  bitwise-iOS
//
//  Created by Al Gabriel on 4/28/24.
//

import SwiftUI

struct ContentView: View {
    @State private var showHelloWorldView = false
    @State private var showSparcsView = false
    @State private var showCardGameView = false
    var body: some View {
        NavigationView {
            VStack (spacing: 30) {
                Image("sparcs")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
                Button("helloWorld 👋🏻"){
                    showHelloWorldView = true
                }
                Button("sparcsView ⚡️"){
                    showSparcsView = true
                }
                Button("cardGame 🃏"){
                    showCardGameView = true
                }
            }
            .buttonStyle(.borderedProminent)
            .font(.largeTitle)
            .bold()
            .navigationTitle("bit/wise - iOS")
        }
        .fullScreenCover(isPresented: $showHelloWorldView, content: {
            helloWorld()
        })
        .fullScreenCover(isPresented: $showSparcsView, content: {
            sparcsView()
        })
        .fullScreenCover(isPresented: $showCardGameView, content: {
            cardGame()
        })
        
    }
}


#Preview {
    ContentView()
}
