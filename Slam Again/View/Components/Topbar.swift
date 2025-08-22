//
//  Topbar.swift
//  Slam Again
//
//  Created by Leo Arnold on 8/21/25.
//

import SwiftUI

struct Topbar: View {
    @StateObject var player = PlayerInformation(name: "Leo", coins: 40, gems: 6)
    
    var body: some View {
        HStack {
            HStack {
                Text("Player: \(player.name)")
                Text("Coins: \(player.coins)")
                Text("Gems: \(player.gems)")
            }
            .padding(.trailing, 50)
            
            Button("Earn 10 Coins") {
                player.coins += 10
            }
        }
        .padding()
        .frame(maxWidth: .infinity, alignment: .top) // full width, stays compact in height
        .background(Color.brown.opacity(0.2)) // makes the bar visible
    }
}

#Preview {
    // Make menu view fit for this
    VStack(spacing: 0) {
        Topbar()
        Spacer()
        Text("Main content")
    }
}
