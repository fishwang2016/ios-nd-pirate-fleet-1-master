//
//  ControlCenter.swift
//  Pirate Fleet
//
//  Created by Jarrod Parkes on 9/2/15.
//  Copyright © 2015 Udacity. All rights reserved.
//

struct GridLocation {
    let x: Int
    let y: Int
}

struct Ship {
    let length: Int
    let location: GridLocation
    let isVertical: Bool
}

struct  Mine: _Mine_ {
    let location: GridLocation
    let explosionText: String
   
  
    
}

class ControlCenter {
    
    func addShipsAndMines(human: Human) {
        // Write your code here!
        let mediumship1 = Ship(length: 3, location: GridLocation(x: 2, y: 3), isVertical: false)
        let mediumship2 = Ship(length: 3, location:GridLocation(x: 5,y:5), isVertical: false)
        let smallship = Ship(length: 2, location: GridLocation(x: 0, y: 0), isVertical: false)
        let bigship = Ship(length: 4, location: GridLocation(x: 2, y: 2), isVertical: false)
        let exbigship = Ship(length: 5, location: GridLocation(x: 1, y: 4), isVertical: false)
        human.addShipToGrid(mediumship1)
        human.addShipToGrid(mediumship2)
        human.addShipToGrid(smallship)
        human.addShipToGrid(bigship)
        human.addShipToGrid(exbigship)
        
        let mine1 = Mine(location:GridLocation(x: 1, y: 1),explosionText: "Hit Mine 1")
        let mine2 = Mine(location:GridLocation(x: 6,y:2),explosionText:"Hit Mine 2")
        human.addMineToGrid(mine1)
        human.addMineToGrid(mine2)
        
        
        
    
    }
    
    func calculateFinalScore(gameStats: GameStats) -> Int {
        
        var finalScore: Int
        
        finalScore = (5-gameStats.enemyShipsRemaining)*gameStats.sinkBonus+(5-gameStats.humanShipsSunk)*gameStats.shipBonus-gameStats.guessPenalty*(gameStats.numberOfMissesByHuman+gameStats.numberOfHitsOnEnemy)
        
        return finalScore
    }
}