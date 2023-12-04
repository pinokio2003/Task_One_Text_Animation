//
//  TextAnimation.swift
//  Task_One_Text_Animation
//
//  Created by Anatolii Kravchuk on 03.12.2023.
//

import SwiftUI

struct TextAnimation: View {
    @State private var isAnimating = false
    @State var text: String
    
    var body: some View {
        ZStack {
            Text(text)
                .font(.title2).bold()
                .foregroundStyle(Color.white)
            
            Text(text)
                .font(.title2).bold()
//                .foregroundColor(Color.blue)
                .foregroundStyle(
                    LinearGradient(colors: [Color.blue.opacity(0.5) , Color.blue, Color.white], startPoint: .trailing, endPoint: .leading)
                )
                .mask(
                    Rectangle()
                        .fill(
                            LinearGradient(
                                gradient: Gradient(
                                    colors: [Color.white, Color.blue, Color.white]
                                ),
                                startPoint: .leading,
                                endPoint: .trailing
                            )
                        )
                        .rotationEffect(.degrees(120))
                        .offset(x: isAnimating ? 500 : -500)
                )
        }
        .onAppear() {
            withAnimation(Animation.linear(duration: 6.0).repeatForever(autoreverses: false)) {
                isAnimating.toggle()
            }
        }
    }
}

#Preview {
    TextAnimation(text: "Some text")
}
