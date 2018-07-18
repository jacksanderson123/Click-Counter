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
        
        //Set Label
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        //Add View to the view higherarchy
        view.addSubview(label)
        self.lblCount = label
        
        //Label
        let labelTwo = UILabel()
        labelTwo.frame = CGRect(x: 150, y: 200, width: 60, height: 60)
        labelTwo.text = "0"
        view.addSubview(labelTwo)
        self.lblIncrement = labelTwo
        
        
        //Increment Button
        let button = UIButton()
        button.frame = CGRect(x: 200, y: 250, width: 100, height: 60)
        button.setTitle("Increment", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(button)
        
        button.addTarget(self, action: #selector(ViewController.incrementCount), for: UIControlEvents.touchUpInside)
        
        //Decrement Button
        let btnDecrement = UIButton()
        btnDecrement.frame = CGRect(x: 50, y: 250, width: 100, height: 60)
        btnDecrement.setTitle("Decrement", for: .normal)
        btnDecrement.setTitleColor(UIColor.blue, for: .normal)
        view.addSubview(btnDecrement)
        
        btnDecrement.addTarget(self, action: #selector(ViewController.decrementCount), for: UIControlEvents.touchUpInside)
        
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

