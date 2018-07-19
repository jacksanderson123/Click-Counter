//
//  ViewController.swift
//  click counter
//
//  Created by jack sanderson on 13/07/2018.
//  Copyright © 2018 jack sanderson. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    var lblCount: UILabel!
    var lblIncrement: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    @objc private func decrementCount(){
        self.count -= 1
        self.lblCount.text = "\(self.count)"
    }
    @objc private func incrementCount(){
        self.count += 1
        self.lblCount.text = "\(self.count)"
        self.lblIncrement.text = "\(self.count)"
    }
    
    
}

