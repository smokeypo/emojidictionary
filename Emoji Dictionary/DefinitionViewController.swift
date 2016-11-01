//
//  DefinitionViewController.swift
//  Emoji Dictionary
//
//  Created by Neil Johnson on 26/10/16.
//  Copyright © 2016 Smokeypo. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    @IBOutlet weak var categoryLabel: UILabel! /* property */
    @IBOutlet weak var birthYearLabel: UILabel! /* property */

    @IBOutlet weak var definitionLabel: UILabel! /* property */
    @IBOutlet weak var emojiLabel: UILabel! /* property */
    var emoji = Emoji()
/* methods */
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
       emojiLabel.text = emoji.stringEmoji
        birthYearLabel.text = "Origination Date: \(emoji.birthYear)"
        categoryLabel.text = "Category: \(emoji.catergory)"
        definitionLabel.text = emoji.definition
        
      /*  if emoji == "🍏" {
        definitionLabel.text = "A Green Apple"
            categoryLabel.text = "Category:  Fruit"
            birthYearLabel.text = "BirthYear: 2010"
    }
        
        if emoji == "🍒" {
            definitionLabel.text = "Two Red Cherries"
            categoryLabel.text = "Category:  Fruit"
            birthYearLabel.text = "BirthYear: 1998"
        }
    
        if emoji == "🍉" {
            definitionLabel.text = "A Slice of Watermelon"
            categoryLabel.text = "Category:  Fruit"
            birthYearLabel.text = "BirthYear: 2007"
        }
        
        if emoji == "🎩" {
            definitionLabel.text = "A Top Hat"
            categoryLabel.text = "Category:  Apparel"
            birthYearLabel.text = "BirthYear: 1920"
        }
        
        if emoji == "🐏" {
            definitionLabel.text = "A Sheep"
            categoryLabel.text = "Category:  Animal"
            birthYearLabel.text = "BirthYear: 1960"
        }
        
        if emoji == "😀" {
            definitionLabel.text = "Laughing out Loud"
            categoryLabel.text = "Category:  Expression"
            birthYearLabel.text = "BirthYear: 2001"
        }
        
        if emoji == "🌻" {
            definitionLabel.text = "A Happy Sun Flower"
            categoryLabel.text = "Category:  Plant"
            birthYearLabel.text = "BirthYear: 1987"
        }
        
        if emoji == "⚽️" {
            definitionLabel.text = "A Soccer Ball"
            categoryLabel.text = "Category:  sports equipment"
            birthYearLabel.text = "BirthYear: 1999"
        }
        
        if emoji == "😀" {
            definitionLabel.text = "Laughing out Loud Again"
            categoryLabel.text = "Category:  Expression"
            birthYearLabel.text = "BirthYear: 2001"
            
        }
        if emoji == "🐟" {
            definitionLabel.text = "The Blue Fish"
            categoryLabel.text = "Category:  Sea Life"
            birthYearLabel.text = "BirthYear: 1977"
        }
        if emoji == "🐝" {
            definitionLabel.text = "The Bumble Bee"
            categoryLabel.text = "Category:  Insect"
            birthYearLabel.text = "BirthYear: 2003"
        }
        
        if emoji == "🌵" {
            definitionLabel.text = "The Cacti"
            categoryLabel.text = "Category:  Pant"
            birthYearLabel.text = "BirthYear: 2007"
        }
        
        if emoji == "🍄" {
            definitionLabel.text = "Mushroom"
            categoryLabel.text = "Category:  Plant"
            birthYearLabel.text = "BirthYear: 1991"

        } */
        
        
    }
    /* methods */
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    



}
