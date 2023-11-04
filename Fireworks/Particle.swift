//
//  Particle.swift
//  Fireworks
//
//  Created by Robert Martinez on 7/2/22.
//

import Foundation

class Particle: Hashable, Equatable {
    let id = UUID()
    var x: Double
    var y: Double
    
    var angle: Double
    var speed: Double
    var scale: Double
    var opacity: Double
    var deathDate: Date
    
    init(x: Double, y: Double, angle: Double, speed: Double, scale: Double, opacity: Double, DeathDate: Date) {
        self.x = x
        self.y = y
        self.angle = angle
        self.speed = speed
        self.scale = scale
        self.opacity = opacity
        self.deathDate = DeathDate
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(id)
    }
    
    static func ==(lhs: Particle, rhs: Particle) -> Bool {
        lhs.id == rhs.id
    }
}
