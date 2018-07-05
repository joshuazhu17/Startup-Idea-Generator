//
//  ViewController.swift
//  Startup Ideas
//
//  Created by Joshua Zhu on 7/3/18.
//  Copyright © 2018 Make School. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let companies = ["Make School", "Uber", "Netflix", "Facebook", "Google", "Kickstarter", "Spotify", "Airbnb", "Snapchat", "YouTube", "Dropbox", "Amazon", "Craigslist", "Tinder", "Instagram", "Tesla", "Twitter", "SpaceX"]
    
    let areas = ["Dogs", "Books", "Gamers", "Star Wars", "Bitcoin", "Goats", "Zombies", "Rich People", "Swimmers", "Florida", "Vampires", "Dragons", "Internet of Things", "Mars", "Cryptocurrency", "Mosquito Repellent", "Fidget Spinners", "Sun Screen", "Water Bottles", "Lost Travelers", "Superheroes"]

    @IBOutlet weak var companyLabel: UILabel!
    @IBOutlet weak var areaLabel: UILabel!
    @IBOutlet weak var ideaButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func ideaButtonPressed(_ sender: Any) {
        let maxIndexCompanies = UInt32(companies.count)
        let maxIndexAreas = UInt32(areas.count)
        let randomIndexCompanies = Int(arc4random_uniform(maxIndexCompanies))
        let randomIndexAreas = Int(arc4random_uniform(maxIndexAreas))
        
        
        companyLabel.text = companies[randomIndexCompanies]
        areaLabel.text = areas[randomIndexAreas]
    }
    
}

