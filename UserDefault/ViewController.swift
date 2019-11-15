//
//  ViewController.swift
//  UserDefault
//
//  Created by 城間健太郎 on 2019/11/15.
//  Copyright © 2019 joma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var colorNumber = 0
    
    fileprivate func changeBgColor() {
        switch colorNumber {
        case 0:
            view.backgroundColor = .red
            label.text = "red"
        case 1:
            view.backgroundColor = .blue
            label.text = "blue"
        case 2:
            view.backgroundColor = .yellow
            label.text = "yellow"
        default:
            view.backgroundColor = .brown
            label.text = "brown"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //view. はUIViewControllerのopen var
        view.backgroundColor = .brown
        
        changeBgColor()

    }
    @IBAction func didClickButton(_ sender: Any) {
    
        if colorNumber <= 2{
            colorNumber += 1
        }else{
            colorNumber = 0
        }

        changeBgColor()
        
    }
    

}

