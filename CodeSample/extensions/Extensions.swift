//
//  Extensions.swift
//  Clustry
//
//  Created by Mohd Ali Khan on 06/11/2020.
//  Copyright © 2021 m@k. All rights reserved.
//

// All app extensions will come here

import UIKit

extension UIViewController {
    static func from<T>(from storyboard: Storyboard, with identifier: StoryboardIdentifier) -> T {
        guard let controller = UIStoryboard(name: storyboard.rawValue, bundle: nil).instantiateViewController(withIdentifier: identifier.rawValue) as? T else {
            fatalError("unable to instantiate view controller")
        }
        return controller
    }
}
