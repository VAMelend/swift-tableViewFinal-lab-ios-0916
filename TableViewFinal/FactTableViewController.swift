//
//  FactTableViewController.swift
//  TableViewFinal
//
//  Created by James Campagno on 6/17/16.
//  Copyright © 2016 Flatiron School. All rights reserved.
//

import UIKit

class FactTableViewController: UITableViewController {
    let factCellIdentifier = "FactCell"
    var planet: Planet!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            navigationItem.title = planet.name
            
        
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planet.facts.count
        
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "FactCell", for: indexPath) as? FactTableViewCell
        
        cell?.factTextView.text = planet.facts[indexPath.row]
        
        return cell!
    }
    
    
    
    
}



//
//
//We'll save the implementation of the final table view controller method, tableView(_:cellForRowAt:) for later, after we've completed the implementation of FactTableViewCell, which requires some work in Interface Builder.
