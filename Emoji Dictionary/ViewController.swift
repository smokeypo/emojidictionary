    //
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Neil Johnson on 26/10/16.
//  Copyright © 2016 Smokeypo. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    @IBOutlet weak var dacooltableview: UITableView! /* property */
    
    
    /*var emojis = ["🍏","🍒","🍉","🎩","🐏","😀","🌻","⚽️","😀","🐟","🐝","🌵","🍄"] /* property */ */
    
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dacooltableview.dataSource = self
        dacooltableview.delegate = self
        emojis = makeEmojiArry()
    }
    
    /* methods */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
        
    }
    
    /* methods */
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    
    /* methods */
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        let emoji = emojis[indexPath.row]
      performSegue(withIdentifier: "moveSegue", sender: emoji)
    }
    
    /* methods */
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
      let defVC = segue.destination as!
        DefinitionViewController
        defVC.emoji = sender as! Emoji
    }
    
/* methods */
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makeEmojiArry() -> [Emoji] {
        let emoji1 = Emoji()
        emoji1.stringEmoji = "🍏"
        emoji1.birthYear = 2010
        emoji1.catergory = "Fruit"
        emoji1.definition = "A Green Apple"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "🍒"
        emoji2.birthYear = 1999
        emoji2.catergory = "Fruit"
        emoji2.definition = "Two Red Cherries"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "🍉"
        emoji3.birthYear = 1969
        emoji3.catergory = "Fruit"
        emoji3.definition = "A slice of Watermelon"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "🎩"
        emoji4.birthYear = 1929
        emoji4.catergory = "Apparell"
        emoji4.definition = "A Black TopHat"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🐏"
        emoji5.birthYear = 1959
        emoji5.catergory = "Animal"
        emoji5.definition = "A white sheep"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "😀"
        emoji6.birthYear = 2009
        emoji6.catergory = "Expression"
        emoji6.definition = "A Smiley Face"
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "🌻"
        emoji7.birthYear = 2001
        emoji7.catergory = "Plant"
        emoji7.definition = "A Sunflower"
        
        let emoji8 = Emoji()
        emoji8.stringEmoji = "⚽️"
        emoji8.birthYear = 2011
        emoji8.catergory = "Sport"
        emoji8.definition = "A Soccer Ball"
        
        let emoji9 = Emoji()
        emoji9.stringEmoji = "😀"
        emoji9.birthYear = 2013
        emoji9.catergory = "Expression"
        emoji9.definition = "Another Smily Face"
        
        let emoji10 = Emoji()
        emoji10.stringEmoji = "🐟"
        emoji10.birthYear = 1971
        emoji10.catergory = "Sea Life"
        emoji10.definition = "A Blue Fish"
        
        let emoji11 = Emoji()
        emoji11.stringEmoji = "🌵"
        emoji11.birthYear = 1976
        emoji11.catergory = "Plant"
        emoji11.definition = "Cacti"
        
        let emoji12 = Emoji()
        emoji12.stringEmoji = "🍄"
        emoji12.birthYear = 1966
        emoji12.catergory = "Plant"
        emoji12.definition = "Mushroom"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7, emoji8, emoji9, emoji10, emoji11, emoji12]
        
    }

}

