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
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        referenceView.dataSource = self
        referenceView.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

