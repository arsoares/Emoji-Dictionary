//
//  ViewController.swift
//  Emoji Dictionary
//
//  Created by Austin Soares on 9/26/17.
//  Copyright © 2017 Austin Soares. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var referenceView: UITableView!
    
    var emojis : [Emoji] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        referenceView.dataSource = self
        referenceView.delegate = self
        emojis = makeEmojiArray()
    }
    
    // how many rows should UITableView have?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojis.count // define # of cells, counting array above
    }
    
    // what should I show in a cell in UITableView?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell()
        let emoji = emojis[indexPath.row]
        cell.textLabel?.text = emoji.stringEmoji
        return cell
    }
    //
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at:indexPath, animated: false)
        let emoji = emojis[indexPath.row]
        performSegue(withIdentifier: "showDetail", sender: emoji)
    }
    
    // Printing the emoji to cmd
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let defVC = segue.destination as! DefinitionViewController
        defVC.emoji = sender as! Emoji
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func makeEmojiArray() -> [Emoji] {
       
        let emoji1 = Emoji()
        emoji1.stringEmoji = "😀"
        emoji1.launch = 2009
        emoji1.category = "Smiley"
        emoji1.definition = "A smiling face"
        
        let emoji2 = Emoji()
        emoji2.stringEmoji = "😇"
        emoji2.launch = 2011
        emoji2.category = "Smiley"
        emoji2.definition = "A smiling face with a halo"
        
        let emoji3 = Emoji()
        emoji3.stringEmoji = "😨"
        emoji3.launch = 2015
        emoji3.category = "Smiley"
        emoji3.definition = "A gasping face"
        
        let emoji4 = Emoji()
        emoji4.stringEmoji = "💌"
        emoji4.launch = 2013
        emoji4.category = "Objects"
        emoji4.definition = "A love letter"
        
        let emoji5 = Emoji()
        emoji5.stringEmoji = "🦐"
        emoji5.launch = 2015
        emoji5.category = "Smilies"
        emoji5.definition = "A shrimp"
        
        let emoji6 = Emoji()
        emoji6.stringEmoji = "🥋"
        emoji6.launch = 2015
        emoji6.category = "Objects"
        emoji6.definition = "A martial arts uniform"
        
        let emoji7 = Emoji()
        emoji7.stringEmoji = "🎾"
        emoji7.launch = 2009
        emoji7.category = "Objects"
        emoji7.definition = "A tennis ball"
        
        let emoji8 = Emoji()
        emoji8.stringEmoji = "🏅"
        emoji8.launch = 2012
        emoji8.category = "Objects"
        emoji8.definition = "A gold medal"
        
        let emoji9 = Emoji()
        emoji9.stringEmoji = "📊"
        emoji9.launch = 2011
        emoji9.category = "Symbols"
        emoji9.definition = "A bar graph"
        
        return [emoji1, emoji2, emoji3, emoji4, emoji5, emoji6, emoji7, emoji8, emoji9]
        
    }


}

