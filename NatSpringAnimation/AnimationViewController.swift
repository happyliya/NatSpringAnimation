//
//  AnimationViewController.swift
//  NatSpringAnimation
//
//  Created by HappyLiya on 01.03.2021.
//

import Spring

class AnimationViewController: UIViewController {

    @IBOutlet var infoLabel: UILabel!
    @IBOutlet var animationView: SpringView!
    
    private var animation = Animation.getRandomAnimation()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        animationView.layer.cornerRadius = 13
        infoLabel.text = animation.description
    }

    @IBAction func runButtonPressed(_ sender: UIButton) {
        infoLabel.text = animation.description
        print("\(animation.name)")
        
        animationView.animation = animation.name
        animationView.curve = animation.curve
        animationView.force = CGFloat(animation.force)
        animationView.duration = CGFloat(animation.duration)
        animationView.delay = CGFloat(animation.delay)
        animationView.animate()
        
        animation = Animation.getRandomAnimation()
        sender.setTitle("Run \(animation.name)", for: .normal)
    }
    
    
    
}

