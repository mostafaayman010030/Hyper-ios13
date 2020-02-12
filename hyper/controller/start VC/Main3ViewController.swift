//
//  Main3ViewController.swift
//  hyper
//
//  Created by Moustafa on 2/7/20.
//  Copyright © 2020 Moustafa Ayman Ahmed. All rights reserved.
//

import UIKit

class Main3ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let lefttSWipe=UISwipeGestureRecognizer(target: self, action: #selector(swipeAction(swipe:)))
        lefttSWipe.direction=UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(lefttSWipe)
        
        
        let rightSWipe=UISwipeGestureRecognizer(target: self, action: #selector(swipeAction(swipe:)))
        rightSWipe.direction=UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(rightSWipe)
    }
    


    @IBAction func createAccount(_ sender: Any)
    {
        performSegue(withIdentifier:"from3_create" , sender: self)
    }
    
    @IBAction func login(_ sender: Any)
    {
        performSegue(withIdentifier:"from3_log" , sender: self)
    }
    
    
    @IBAction func btn1(_ sender: Any) {

//        performSegue(withIdentifier: gotomain2, sender: self)
        navigationController?.popViewController(animated: true)
          
       }
       @IBAction func btn2(_ sender: Any) {
            print("Main 3")
       }
       @IBAction func btn3(_ sender: Any) {

        performSegue(withIdentifier: gotomain4, sender: self)
       }
    
    
    
    
     @objc func swipeAction(swipe:UISwipeGestureRecognizer)
        {
            switch swipe.direction.rawValue {
            case 1:
 
//                performSegue(withIdentifier: gotomain2, sender: self)
                navigationController?.popViewController(animated: true)
                case 2:
          
                            performSegue(withIdentifier: gotomain4, sender: self)
            default:
                break
            }
        }
    

}
