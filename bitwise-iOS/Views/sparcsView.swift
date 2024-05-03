//
//  ContentView.swift
//  bitwise-iOS
//
//  Created by Al Gabriel on 4/28/24.
//

import SwiftUI

struct sparcsView: View {
    @Environment(\.dismiss) private var dismiss
    var body: some View {
            
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
                    .padding()
                Button("Back to Main View"){
                    dismiss()
                }
                .buttonStyle(.borderedProminent)
                
            }
            
        }
    }

#Preview {
    sparcsView()
}
