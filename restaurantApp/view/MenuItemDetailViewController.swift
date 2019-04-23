//
//  MenuItemDetailViewController.swift
//  restaurantApp
//
//  Created by Andrew Morris on 4/13/19.
//  Copyright © 2019 Andrew Morris. All rights reserved.
//

import UIKit

class MenuItemDetailViewController: UIViewController {
 
    var menuItem: MenuItem!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var detailTextLabel: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var addToOrderButton: UIButton!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        addToOrderButton.layer.cornerRadius = 5.0

        updateUI()
    }

    func updateUI() {
        titleLabel.text = menuItem.name
        priceLabel.text = String(format: "$%.2f", menuItem.price)
        detailTextLabel.text = menuItem.detailText
        MenuController.shared.fetchImage(url: menuItem.imageURL)
        { (image) in
            guard let image = image else { return }
            DispatchQueue.main.async {
                self.imageView.image = image
            }
        }
    }
    
    
    
    
    @IBAction func addToOrderButtonTapped(_ sender: Any) {
        UIView.animate(withDuration: 0.3) {
            self.addToOrderButton.transform =
                CGAffineTransform(scaleX: 3.0, y: 3.0)
            self.addToOrderButton.transform =
                CGAffineTransform(scaleX: 1.0, y: 1.0)
        }
        
        MenuController.shared.order.menuItems.append(menuItem)
        
        
    }
    
    
}
