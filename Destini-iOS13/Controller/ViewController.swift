//
//  ViewController.swift
//  Destini-iOS13
//
//  Updated by Maksim Stogniy on 24.02.2024.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1Button: UIButton!
    @IBOutlet weak var choice2Button: UIButton!
    
    var storyBrain = StoryBrain()
        
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    @IBAction func choiceMade(_ sender: UIButton) {
        let choice = sender.currentTitle!
        
        storyBrain.nextStory(userChoice: choice)
        updateUI()
    }
    
    func updateUI() {
        let currentStory = storyBrain.getCurrentStory()
        storyLabel.text = currentStory.title
        choice1Button.setTitle(currentStory.choice1, for: .normal)
        choice2Button.setTitle(currentStory.choice2, for: .normal)
    }
    


}

