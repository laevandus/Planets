//
//  PlanetTableViewController.swift
//  Planets
//
//  Created by Toomas Vahter on 03/05/2018.
//  Copyright © 2018 Augmented Code. All rights reserved.
//

import UIKit

final class PlanetTableViewController: UITableViewController {
    
    // MARK: Creating the View
    
    let planets: [Planet]
    
    init(planets: [Planet]) {
        self.planets = planets
        super.init(nibName: "PlanetTableViewController", bundle: .main)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    // MARK: Managing the View
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "PlanetCellIdentifier")
    }
    
    
    // MARK: Table View Data Source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return planets.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlanetCellIdentifier", for: indexPath)
        cell.accessoryType = .disclosureIndicator
        cell.textLabel?.text = planets[indexPath.row].name
        return cell
    }
    
    
    // MARK: Table View Delegate
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        scenePresenter?.presentDetailedInfo(for: planets[indexPath.row])
    }
}
