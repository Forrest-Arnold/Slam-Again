//
//  StageCreation.swift
//  Slam Again
//
//  Created by Leo Arnold on 8/21/25.
//

import Foundation

class StageCreation {
    
    // Chat example
//    let stageCreator = StageCreation()
//    let stage = stageCreator.createStage(of: 9)
//
//    print(stage.tiles.count) // 9
//    print(stage.tiles[0].debuffs.isPoisoned) // false

    
    // MARK: - Struct Initilization
    
    // MARK: - Functions
    func CreateStage(of size: Int) -> Stage {
        return Stage(size: size)
    }
}
