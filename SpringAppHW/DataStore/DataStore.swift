//
//  DataStore.swift
//  SpringAppHW
//
//  Created by Алексей on 07.08.2022.
//

import Foundation
import SpringAnimation

class DataStore {
    static let shired = DataStore()
    
    let animPreset = AnimationPreset.allCases
    let animCurve = AnimationCurve.allCases
    
    private init() {}
}
