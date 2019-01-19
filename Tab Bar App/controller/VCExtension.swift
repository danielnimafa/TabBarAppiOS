//
//  VCExtension.swift
//  Tab Bar App
//
//  Created by Daniel Nimafa on 20/01/19.
//  Copyright © 2019 Kipacraft. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {
    
    func storyboardInstance<T: UIViewController>(_ className: String) -> T? {
        let storyboard = UIStoryboard(name: className, bundle: nil)
        return storyboard.instantiateInitialViewController() as? T
    }
    
    func storyboardInstanceWithID<T: UIViewController>(_ className: String) -> T? {
        let storyboard = UIStoryboard(name: className, bundle: nil)
        return storyboard.instantiateViewController(withIdentifier: className) as? T
    }
    
}
