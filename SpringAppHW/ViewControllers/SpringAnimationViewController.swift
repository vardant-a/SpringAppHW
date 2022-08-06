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
    @IBOutlet var codeTextView: UITextView!
    @IBOutlet var startAnimationButton: UIButton!
    
    var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animatedView.layer.cornerRadius = 15
        codeTextView.text = animation.info
    }
    
    @IBAction func startAnimation() {
        animationProperties()
        codeTextView.text = animation.info
        animatedView.animate()
        nextAnimationProperties()
    }
}

extension SpringAnimationViewController {
    
    private func animationProperties() {
        animatedView.animation = animation.preset
        animatedView.curve = animation.curve
        animatedView.force = CGFloat(animation.force)
        animatedView.duration = CGFloat(animation.duration)
        animatedView.delay = CGFloat(animation.delay)
    }
    
    private func nextAnimationProperties() {
        animation = Animation.getRandomAnimation()
        startAnimationButton.setTitle("Run \(animation.preset)", for: .normal)
    }
}
