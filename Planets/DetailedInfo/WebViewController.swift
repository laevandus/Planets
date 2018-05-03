//
//  WebViewController.swift
//  Planets
//
//  Created by Toomas Vahter on 03/05/2018.
//  Copyright © 2018 Augmented Code. All rights reserved.
//

import UIKit
import WebKit

final class WebViewController: UIViewController {
    
    // MARK: Managing the View
    
    @IBOutlet weak var webView: WKWebView!
    
    @IBAction func goToList(_ sender: Any) {
        scenePresenter?.presentPlanetList()
    }
    
    
    // MARK: Loading URLs
    
    func load(_ url: URL) {
        webView.load(URLRequest(url: url))
    }
}
