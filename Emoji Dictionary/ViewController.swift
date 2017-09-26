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
    
    var emojiTable = ["😀", "😇", "😨", "💌", "🦐", "🥋", "🎾", "🏅", "🎈", "📊"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        referenceView.dataSource = self
        referenceView.delegate = self
        
    }
    
    // how many rows should UITableView have?
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return emojiTable.count // define # of cells, counting array above
    }
    
    // what should I show in a cell in UITableView?
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        print(indexPath.row)
        let cell = UITableViewCell() // create a new UItableView cell in a constant
        cell.textLabel?.text = "Hello" // every cell will have this label
        return cell
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

