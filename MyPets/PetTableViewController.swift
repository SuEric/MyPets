//
//  PetTableViewController.swift
//  MyPets
//
//  Created by Eric García on 08/07/17.
//  Copyright © 2017 Procodific. All rights reserved.
//

import UIKit

class PetTableViewController: UIViewController, UITableViewDataSource {

    let pets = [
        "Silver",
        "Kerchak",
        "Giorgio",
        "Estrella",
        "Bunker",
        "Tanque",
        "Barrabas",
        "Terry",
        "Bobby",
        "Hachi",
        "Scooby",
        "Scrappy",
        "Morris",
        "Teddy",
        "Rufus",
        "Cofin"
    ]
    
    @IBOutlet weak var petTableView: UITableView!
    
    // LifeCycle methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.petTableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    // UITableView delegate methods
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pets.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "petCell")
        cell?.textLabel?.text = pets[indexPath.row]
        
        return cell!
    }
    
}
