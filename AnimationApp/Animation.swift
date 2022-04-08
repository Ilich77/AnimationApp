//
//  SpringAnimationModel.swift
//  AnimationApp
//
//  Created by Iliya Mayasov on 05.04.2022.
//

struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    var description: String {
        """
        preset: \(preset)
        curve: \(curve)
        force: \(String(format: "%.02f", force))
        duration: \(String(format: "%.02f", duration))
        delay: \(String(format: "%.02f", delay))
        """
    }
    
    static func getRandomAnimation() -> Animation {
        Animation(
            preset: DataManager.shared.animations.randomElement()?.rawValue ?? "slideLeft",
            curve: DataManager.shared.curves.randomElement()?.rawValue ?? "easeIn",
            force: Double.random(in: 1.0..<1.5),
            duration: Double.random(in: 0.5..<1.6),
            delay: Double.random(in: 0.3..<0.4)
        )
    }
}
