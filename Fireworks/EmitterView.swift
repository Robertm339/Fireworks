//
//  EmitterView.swift
//  Fireworks
//
//  Created by Robert Martinez on 7/2/22.
//

import SwiftUI

struct EmitterView: View {
    var particleSystem: ParticleSystem
    
    var body: some View {
        TimelineView(.animation) { timeline in
            Canvas { context, size in
                particleSystem.update(date: timeline.date)
                let baseTransform = context.transform
                
                for particle in particleSystem.particles {
                    let xPos = particle.x * size.width
                    let yPos = particle.y * size.height
                    
                    context.opacity = particle.opacity
                    context.translateBy(x: xPos, y: yPos)
                    context.scaleBy(x: particle.scale, y: particle.scale)
                    context.draw(particleSystem.image, at: .zero)
                    context.transform = baseTransform
                }
            }
        }
    }
}
