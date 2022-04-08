//
//  Planet.swift
//  Solor_System
//
//  Created by Tasuku Yamamoto on 4/7/22.
//

import Foundation

class Planet {
    let planetName: String
    let planetImageName: String
    let planetDiameter: Float
    let planetDayLength: Float
    let maxMillionKMsFromSun: Float
    
    init(planetName: String, planetImageName: String, planetDiameter: Float, planetDayLength: Float, maxMillionKMsFromSun: Float){
        self.planetName = planetName
        self.planetImageName = planetImageName
        self.planetDiameter = planetDiameter
        self.planetDayLength = planetDayLength
        self.maxMillionKMsFromSun = maxMillionKMsFromSun
    }
    
}//End of Planet class

let mercury = Planet(planetName: "Mercury", planetImageName: "mercury", planetDiameter: 4880, planetDayLength: 87.969, maxMillionKMsFromSun: 43.0)


