//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Neil Johnson on 26/10/16.
//  Copyright © 2016 Smokeypo. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var definitionLabel: UILabel!
    @IBOutlet weak var emojiLabel: UILabel!
    var emoji = "NO EMOJI"

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
       emojiLabel.text = emoji
        
        if emoji == "🍏" {
        definitionLabel.text = "A Green Apple"
    }
        
        if emoji == "🍒" {
            definitionLabel.text = "Two Red Cherries"
        }
    
        if emoji == "🍉" {
            definitionLabel.text = "A Slice of Watermelon"
        }
        
        if emoji == "🎩" {
            definitionLabel.text = "A Top Hat"
        }
        
        if emoji == "🐏" {
            definitionLabel.text = "A Sheep"
        }
        
        if emoji == "😀" {
            definitionLabel.text = "Laughing out Loud"
        }
        
        if emoji == "🌻" {
            definitionLabel.text = "A Happy Sun Flower"
        }
        
        if emoji == "⚽️" {
            definitionLabel.text = "A Soccer Ball"
        }
        
        if emoji == "😀" {
            definitionLabel.text = "Laughing out Loud Again"
        }
        if emoji == "🐟" {
            definitionLabel.text = "The Blue Fish"
        }
        if emoji == "🐝" {
            definitionLabel.text = "The Bumble Bee"
        }
        
        if emoji == "🌵" {
            definitionLabel.text = "The Cacti"
        }
        
        if emoji == "🍄" {
            definitionLabel.text = "Mushroom"
        }
        
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
