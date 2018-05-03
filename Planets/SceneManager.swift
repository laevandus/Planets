//
//  SceneManager.swift
//  Planets
//
//  Created by Toomas Vahter on 03/05/2018.
//  Copyright © 2018 Augmented Code. All rights reserved.
//

import UIKit

final class SceneManager: UIResponder {
    
    // MARK: Creating Scene Manager
    
    let window: UIWindow
    
    init(window: UIWindow) {
        self.window = window
    }
    
    
    // MARK: Presenting Scenes
    
    @IBAction func presentPlanetList() {
        print("Present planet list.")
    }
}
