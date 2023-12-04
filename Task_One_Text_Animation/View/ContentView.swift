//
//  ContentView.swift
//  Task_One_Text_Animation
//
//  Created by Anatolii Kravchuk on 03.12.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {

            ZStack {
                RoundedRectangle(cornerRadius: 28.0)
                    .fill(
                        LinearGradient(colors: [.rectangleStart, .rectangkeFinish],
                                       startPoint: .leading,
                                       endPoint: .bottomTrailing)
                    )
                    .frame(height: 100)
                    .padding(.horizontal, -2)
                //Image
                    .overlay(alignment: .trailing) {
                        Image("Rings")
                        .resizable()
                        .frame(width: 250, height: 100)
                    }
                //Text
                    .overlay(alignment: .leading) {
                        VStack {
                            TextAnimation(text: "Welcome to")
                            TextAnimation(text: "Chiccago")
                                .padding(.trailing)
                        }
                        .padding()
                        
                    }
            }
            .padding()
        
    }
}

#Preview {
    ContentView()
}
