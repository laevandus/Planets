//
//  SceneManager.swift
//  Planets
//
//  Created by Toomas Vahter on 03/05/2018.
//  Copyright © 2018 Augmented Code. All rights reserved.
//

import UIKit

final class SceneManager: UIResponder {
    
    // MARK: Creating the Scene Manager
    
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    
    // MARK: Managing the Dependencies
    
    private let dependencies = DependencyStore()
    
    
    // MARK: Presenting Scenes
    
    @IBAction func presentPlanetList() {
        let planets = dependencies.planetManager.planets
        let listViewController = PlanetTableViewController(planets: planets)
        let navigationController = UINavigationController(rootViewController: listViewController)
        window.rootViewController = navigationController
    }
}

fileprivate final class DependencyStore {
    lazy var planetManager = PlanetManager()
}
