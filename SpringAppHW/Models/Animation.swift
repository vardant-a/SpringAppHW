//
//  Animation.swift
//  SpringAppHW
//
//  Created by Алексей on 06.08.2022.
//

import Foundation
import SpringAnimation

struct Animation {
    
    var preset: String
    var curve: String
    var force: Float
    var duration: Float
    var delay: Float
    
    var info: String {
    """
    Preset: \(preset)
    Curve: \(curve)
    Force: \(String(format: "%.2f", force))
    Duration: \(String(format: "%.2f", duration))
    Delay: \(String(format: "%.2f", delay))
    """
    }

    static func getRandomAnimation() -> Animation {
        Animation(
            preset: AnimationPreset.allCases.randomElement()?.rawValue ?? "",
            curve: AnimationCurve.allCases.randomElement()?.rawValue ?? "",
            force: Float.random(in: 1...2),
            duration: Float.random(in: 1...2),
            delay: Float.random(in: 1...2)
        )
    }
}

