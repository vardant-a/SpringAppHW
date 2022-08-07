//
//  Animation.swift
//  SpringAppHW
//
//  Created by Алексей on 06.08.2022.
//

import Foundation

struct Animation {
    
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
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
            preset: DataStore.shired.animPreset.randomElement()?.rawValue ?? "",
            curve: DataStore.shired.animCurve.randomElement()?.rawValue ?? "",
            force: Double.random(in: 1...2),
            duration: Double.random(in: 1.2..<1.5),
            delay: Double.random(in: 0.1..<0.5)
        )
    }
}

