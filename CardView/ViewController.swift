//
//  ViewController.swift
//  CardView
//
//  Created by Thaliees on 6/20/19.
//  Copyright © 2019 Thaliees. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialCards

class ViewController: UIViewController {

    @IBOutlet weak var photo: UIImageView!
    @IBOutlet weak var card: MDCCard!
    @IBOutlet weak var viewBottom: UIView!
    
    private var valueInit:CGFloat = 0.2
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // If you image is square, uncomment the next two lines
        //photo.layer.cornerRadius = photo.bounds.size.width / 2
        //photo.clipsToBounds = true
        viewBottom.layer.cornerRadius = CGFloat(10)
        viewBottom.clipsToBounds = true
        
        card.cornerRadius = 10
        card.setShadowColor(.darkGray, for: .normal)
        card.setShadowElevation(.init(rawValue: 10), for: .normal)
        card.alpha = 0
        
        // Start animation
        UIView.animate(withDuration: 5, animations: {
            self.animationCard(value: self.valueInit)
        }) { (completion) in
            self.card.alpha = 1
        }
    }
    
    private func animationCard(value:CGFloat){
        self.card.alpha = value
        self.valueInit += 0.25
    }
}

