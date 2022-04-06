//
//  ViewController.swift
//  AnimationApp
//
//  Created by Iliya Mayasov on 05.04.2022.
//

import Spring

class ViewController: UIViewController {
    
    var currentAnimationSettings = SpringAnimationSettings.getRandomSettings()

    
    @IBOutlet weak var springAnimationView: SpringView!
    @IBOutlet weak var nextAnimation: UIButton!
    
    @IBOutlet weak var presetLabel: UILabel!
    @IBOutlet weak var curveLabel: UILabel!
    @IBOutlet weak var forceLabel: UILabel!
    @IBOutlet weak var durationLabel: UILabel!
    @IBOutlet weak var delayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        getSettingsOnTheView()
    }
    
    @IBAction func runNextAnimation() {
        springAnimationView.animation = currentAnimationSettings.preset
        springAnimationView.curve = currentAnimationSettings.curve
        springAnimationView.force = currentAnimationSettings.force
        springAnimationView.duration = currentAnimationSettings.duration
        springAnimationView.delay = currentAnimationSettings.delay
        springAnimationView.animate()
        getSettingsOnTheView()
        currentAnimationSettings = SpringAnimationSettings.getRandomSettings()
        nextAnimation.setTitle("Run \(currentAnimationSettings.preset)", for: .normal)
        super.viewDidAppear(true)
    }
    
    private func getSettingsOnTheView () {
        presetLabel.text = "preset: \(currentAnimationSettings.preset)"
        curveLabel.text = "curve: \(currentAnimationSettings.curve)"
        forceLabel.text = String(format: "force: %.2f", currentAnimationSettings.force)
        durationLabel.text = String(format: "duration: %.2f", currentAnimationSettings.duration)
        delayLabel.text = String(format: "force: %.2f", currentAnimationSettings.delay)
    }
}

