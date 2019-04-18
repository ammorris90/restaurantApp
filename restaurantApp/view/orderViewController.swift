//
//  orderViewController.swift
//  restaurantApp
//
//  Created by Andrew Morris on 4/17/19.
//  Copyright © 2019 Andrew Morris. All rights reserved.
//

import Foundation
import UIKit

class OrderConfirmationViewController: UIViewController {

    @IBOutlet weak var timeRemainingLabel: UILabel!
    var minutes: Int!

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timeRemainingLabel.text = "Thank you for your order! Your wait time is approximately \(minutes!) minutes."
    }
}
