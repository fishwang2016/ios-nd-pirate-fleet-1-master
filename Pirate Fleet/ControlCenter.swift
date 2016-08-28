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

struct  Mine {
    let location: GridLocation
    let isVertical: Bool
    let length: Int
    var hit: Bool
    
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
        
        
    }
    
    func calculateFinalScore(gameStats: GameStats) -> Int {
        
        var finalScore: Int
        
        finalScore = 0
        
        
        return finalScore
    }
}