//
//  ViewController.swift
//  AnimationApp
//
//  Created by Iliya Mayasov on 05.04.2022.
//

import Spring

class ViewController: UIViewController {
    
    //MARK: IB Outlets
    @IBOutlet weak var springAnimationView: SpringView!
    @IBOutlet weak var springAnimationLabel: UILabel! {
        didSet{
            springAnimationLabel.text = currentAnimation.description
        }
    }
    
    //MARK: Private Properties
    private var currentAnimation = Animation.getRandomAnimation()
    
    //MARK: IB Actions
    @IBAction func animButtonPressed(_ sender: UIButton) {
        springAnimationLabel.text = currentAnimation.description
        
        springAnimationView.animation = currentAnimation.preset
        springAnimationView.curve = currentAnimation.curve
        springAnimationView.force = currentAnimation.force
        springAnimationView.duration = currentAnimation.duration
        springAnimationView.delay = currentAnimation.delay
        springAnimationView.animate()
        
        currentAnimation = Animation.getRandomAnimation()
        
        sender.setTitle("Run \(currentAnimation.preset)", for: .normal)
    }
}

