//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Austin Soares on 9/26/17.
//  Copyright © 2017 Austin Soares. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {

    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "No Emoji"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        emojiLabel.text = emoji
        
        if emoji == "😀" {
            definitionLabel.text = "A smiling face"
        }
        if emoji == "😇" {
            definitionLabel.text = "A smiling face with halo"
        }
        if emoji == "😨" {
            definitionLabel.text = "A gasping face"
        }
        if emoji == "💌" {
            definitionLabel.text = "A love letter"
        }
        if emoji == "🦐" {
            definitionLabel.text = "A shrimp"
        }
        if emoji == "🥋" {
            definitionLabel.text = "A martial arts uniform"
        }
        if emoji == "🎾" {
            definitionLabel.text = "A tennis ball"
        }
        if emoji == "🏅" {
            definitionLabel.text = "A gold medal"
        }
        if emoji == "🎈" {
            definitionLabel.text = "A red ballon"
        }
        if emoji == "📊" {
            definitionLabel.text = "A bar graph"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
