//
//  ViewController.swift
//  Count
//
//  Created by 大林拓実 on 2018/03/03.
//  Copyright © 2018年 Life is tech. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var number: Int = 0
    @IBOutlet var label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func changeColor() {
        if number >= 10 {
            label.textColor = UIColor.red
        }
        else if  number <= -10 {
            label.textColor = UIColor.blue
        }
        else {
            label.textColor = UIColor.white
        }
    }
    
    @IBAction func plus(){
        number = number + 1
        label.text = String(number)
        
        changeColor()
    }
    
    @IBAction func minus(){
        number = number - 1
        label.text = String(number)
        
        changeColor()
    }
    
    @IBAction func clear(){
        number = 0
        label.text = String(number)
        label.textColor = UIColor.white
    }
    
    @IBAction func multiple2(){
        number = number*2
        
        label.text = String(number)
        
        changeColor()
    }
    
    @IBAction func division2(){
        number = number/2
        
        label.text = String(number)
        
        changeColor()
    }
    

}

