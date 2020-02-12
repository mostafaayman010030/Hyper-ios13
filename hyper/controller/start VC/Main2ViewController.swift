//
//  Main2ViewController.swift
//  hyper
//
//  Created by Moustafa on 2/7/20.
//  Copyright © 2020 Moustafa Ayman Ahmed. All rights reserved.
//

import UIKit

class Main2ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let lefttSWipe=UISwipeGestureRecognizer(target: self, action: #selector(swipeAction(swipe:)))
        lefttSWipe.direction=UISwipeGestureRecognizer.Direction.left
        self.view.addGestureRecognizer(lefttSWipe)


    }
    
    @IBAction func createAccount(_ sender: Any)
    {
        performSegue(withIdentifier:"from2_create" , sender: self)
    }
    
    @IBAction func login(_ sender: Any)
    {
        performSegue(withIdentifier:"from2_log" , sender: self)
    }
    
    
    @IBAction func btn1(_ sender: Any) {
        print("Main 2")
    }
    @IBAction func btn2(_ sender: Any) {

        performSegue(withIdentifier: gotomain3, sender: self)
    }
    @IBAction func btn3(_ sender: Any) {
//        let nextViewController = self.storyboard?.instantiateViewController(withIdentifier: mainVC4) as! Main4ViewController
//               self.present(nextViewController, animated:true, completion:nil)
         performSegue(withIdentifier: gofrom2_4, sender: self)
       
    }
    
    
    
    
    
    @objc func swipeAction(swipe:UISwipeGestureRecognizer)
    {
        switch swipe.direction.rawValue {
        case 2:
            performSegue(withIdentifier: gotomain3, sender: self)
        default:
            break
        }
    }
    
}



extension UIViewController
{
    
}
