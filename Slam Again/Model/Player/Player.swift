//
//  Player.swift
//  Slam Again
//
//  Created by Leo Arnold on 8/21/25.
//

import Foundation

struct Player {
    let name: String
    var location: Tile
    var health: Int
    var stamina: Int
    var slamMeter: Int
    var debuffs: Debuffs
}
