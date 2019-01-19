//
//  OpeningVC.swift
//  Tab Bar App
//
//  Created by Daniel Nimafa on 19/01/19.
//  Copyright © 2019 Kipacraft. All rights reserved.
//

import UIKit

class OpeningVC: UIViewController {

    @IBOutlet var tombol: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tombol.layer.cornerRadius = 10
        
    }
    
    @IBAction func enterBtnPressed(_ sender: UIButton) {
        
        sender.flash {
            guard let homeTabVC = self.storyboardInstanceWithID(String(describing: HomeTabVC.self)) else { return }
            self.present(homeTabVC, animated: true, completion: nil)
        }
    }
}
