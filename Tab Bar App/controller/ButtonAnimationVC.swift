//
//  ButtonAnimationVC.swift
//  Tab Bar App
//
//  Created by Daniel Nimafa on 19/01/19.
//  Copyright © 2019 Kipacraft. All rights reserved.
//

import UIKit

class ButtonAnimationVC: UIViewController {
    
    @IBOutlet var buttons: [UIButton]!

    override func viewDidLoad() {
        super.viewDidLoad()

        for button in buttons {
            button.layer.cornerRadius = 8
        }
        
    }
    
    @IBAction func tealButton(_ sender: UIButton) {
        sender.pulsate()
    }
    
    @IBAction func orangeButton(_ sender: UIButton) {
        sender.flash()
    }
    
    @IBAction func magentaButton(_ sender: UIButton) {
        sender.shake {
            print("Do your stuff")
        }
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
