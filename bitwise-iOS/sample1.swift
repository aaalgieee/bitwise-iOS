//
//  ContentView.swift
//  bitwise-iOS
//
//  Created by Al Gabriel on 4/28/24.
//

import SwiftUI

struct sample1: View {
    var body: some View {
        ZStack{
            Color(.black)
                .ignoresSafeArea()
            
            VStack{
                Image("sparcs")
                    .resizable()
                    .cornerRadius(15)
                    .aspectRatio(contentMode: .fit)
                    .padding()
                Text("UP Mindanao Society of Programmers And Refined Computer Scientists")
                    .font(.largeTitle)
                    .fontWeight(.semibold)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(Color.white)
                
            }
            
        }
    }
}

#Preview {
    sample1()
}
