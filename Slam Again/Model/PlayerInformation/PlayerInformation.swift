//
//  PlayerInformation.swift
//  Slam Again
//
//  Created by Leo Arnold on 8/21/25.
//

import Foundation

class PlayerInformation: ObservableObject {
    let name: String
    @Published var coins: Int
    @Published var gems: Int
    
    init(name: String, coins: Int, gems: Int) {
        self.name = name
        self.coins = coins
        self.gems = gems
    }
}

