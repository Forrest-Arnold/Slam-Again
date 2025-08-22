//
//  Stage.swift
//  Slam Again
//
//  Created by Leo Arnold on 8/21/25.
//

import Foundation

struct Stage {
    let size: Int
    var tiles: [Tile]
    
    init(size: Int) {
        self.size = size
        self.tiles = []
        
        // Generate tiles equal to size
        for index in 0..<size {
            let tile = Tile(location: index, size: 1, debuffs: Debuffs())
            self.tiles.append(tile)
        }
    }
}

