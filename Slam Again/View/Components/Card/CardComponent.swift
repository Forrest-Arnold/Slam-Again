//
//  CardComponent.swift
//  Slam Again
//
//  Created by Leo Arnold on 8/21/25.
//

import SwiftUI

struct CardComponent: View {
    let colors: [Color] = [.red, .green, .blue] // three different colors
    
    var body: some View {
        ZStack {
            // Background card
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 180, height: 300)
            
            RoundedRectangle(cornerRadius: 10)
                .frame(width: 160, height: 280)
                .foregroundStyle(.white)
                .opacity(0.7)
            
            // Content overlay aligned to top
            VStack(spacing: 0) {
                ZStack {
                    RoundedRectangle(cornerRadius: 20)
                        .foregroundStyle(.black)
                        .frame(width: 180, height: 210)
                    
                    RoundedRectangle(cornerRadius: 10)
                        .foregroundStyle(.white)
                        .frame(width: 160, height: 190)
                        .overlay(
                            // Three colored rectangles at the top
                            HStack(spacing: 10) {
                                ForEach(colors, id: \.self) { color in
                                    RoundedRectangle(cornerRadius: 5)
                                        .fill(color)
                                        .overlay(
                                            RoundedRectangle(cornerRadius: 5)
                                                .stroke(Color.black, lineWidth: 2)
                                        )
                                        .frame(width: 40, height: 20)
                                }
                            }
                            .padding(.top, 10),
                            alignment: .top
                        )
                }
                
                Spacer() // push everything to top
            }
            .frame(width: 180, height: 280)
        }
    }
}

#Preview {
    CardComponent()
}
