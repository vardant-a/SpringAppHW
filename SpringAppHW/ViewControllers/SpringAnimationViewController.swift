//
//  SpringAnimationViewController.swift
//  SpringAppHW
//
//  Created by Алексей on 06.08.2022.
//

import UIKit
import SpringAnimation

class SpringAnimationViewController: UIViewController {
    
    @IBOutlet var animatedView: SpringView!
    @IBOutlet var startAnimationButton: UIButton!
    @IBOutlet var animationPropertiesLabel: UILabel! {
        didSet {
            animationPropertiesLabel.text = animation.info
        }
    }
    
    private var animation = Animation.getRandomAnimation()
    
    @IBAction func startAnimation() {
        animatedView.animation = animation.preset
        animatedView.curve = animation.curve
        animatedView.force = animation.force
        animatedView.duration = animation.duration
        animatedView.delay = animation.delay
        animatedView.animate()
        animationPropertiesLabel.text = animation.info
        
        animation = Animation.getRandomAnimation()
        startAnimationButton.setTitle("Run \(animation.preset)", for: .normal)
    }
}
