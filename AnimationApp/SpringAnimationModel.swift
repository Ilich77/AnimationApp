//
//  SpringAnimationModel.swift
//  AnimationApp
//
//  Created by Iliya Mayasov on 05.04.2022.
//

import Foundation

struct SpringAnimationSettings {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getRandomSettings() -> SpringAnimationSettings {
        var index = Int.random(in: 0..<presets.allCases.count)
        let preset = "\(presets.allCases[index])"
        index = Int.random(in: 0..<curves.allCases.count)
        let curve = "\(curves.allCases[index])"
        let force = Double.random(in: 0..<1.5)
        let duration = Double.random(in: 0.5..<2.0)
        let delay = Double.random(in: 0.3..<0.5)
        
        let animation = SpringAnimationSettings(
            preset: preset,
            curve: curve,
            force: force,
            duration: duration,
            delay: delay
        )
        return animation
    }
}

enum presets: CaseIterable {
    case shake, pop, morph, squeeze, wobble, swing, flipX,
    flipY, fall, squeezeLeft, squeezeRight, squeezeDown,
    squeezeUp, slideLeft, slideRight, slideDown, slideUp,
    fadeIn, fadeOut, fadeInLeft, fadeInRight, fadeInDown,
    fadeInUp, zoomIn, zoomOut, flash
}

enum curves: CaseIterable {
    case spring, linear, easeIn, easeOut, easeInOut
}

