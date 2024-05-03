//
//  helloWorld.swift
//  bitwise-iOS
//
//  Created by Al Gabriel on 5/4/24.
//

import SwiftUI

struct helloWorld: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            Text ("Hello, World 🌎")
                .bold()
                .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                .padding()
            Button("Back to Main View"){
                dismiss()
            }
            .buttonStyle(.borderedProminent)
        }
    }
}

#Preview {
    helloWorld()
}
