//
//  TileGeneration.swift
//  Slam Again
//
//  Created by Leo Arnold on 8/21/25.
//

import SwiftUI

struct TileGeneration: View {
    var body: some View {
        HStack {
            ForEach(0..<9) {_ in
                Rectangle()
                    .frame(width: 80, height: 60)
                    .foregroundStyle(.gray)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .bottom)
    }
}

#Preview {
    VStack {
        Spacer()
        TileGeneration()
    }
}
