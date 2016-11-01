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
    
    
    var emojis = ["🍏","🍒","🍉","🎩","🐏","😀","🌻","⚽️","😀","🐟","🐝","🌵","🍄"] /* property */
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        dacooltableview.dataSource = self
        dacooltableview.delegate = self
    }
    
    /* methods */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count
        
    }
    
    /* methods */
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = emojis[indexPath.row]
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
        defVC.emoji = sender as! String
    }
    
/* methods */
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

