//
//  Main4ViewController.swift
//  hyper
//
//  Created by Moustafa on 2/7/20.
//  Copyright © 2020 Moustafa Ayman Ahmed. All rights reserved.
//

import UIKit

class Main4ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        let rightSWipe=UISwipeGestureRecognizer(target: self, action: #selector(swipeAction(swipe:)))
        rightSWipe.direction=UISwipeGestureRecognizer.Direction.right
        self.view.addGestureRecognizer(rightSWipe)
    }
    
    @IBAction func createAccount(_ sender: Any)
    {
        performSegue(withIdentifier:"from4_create" , sender: self)
    }
    @IBAction func login(_ sender: Any)
    {
        performSegue(withIdentifier:"from4_log" , sender: self)
    }
    
    @IBAction func btn1(_ sender: Any) {
//     let nextViewController = self.storyboard?.instantiateViewController(withIdentifier: mainVC2) as! Main2ViewController
//     self.present(nextViewController, animated:true, completion:nil)
      //  navigationController?.popToRootViewController(animated: true)
        for vc in (self.navigationController?.viewControllers ?? []) {
            if vc is Main2ViewController {
                _ = self.navigationController?.popToViewController(vc, animated: true)
                break
            }
        }
       
    }
    @IBAction func btn2(_ sender: Any) {

         //performSegue(withIdentifier: gotomain3, sender: self)
        navigationController?.popViewController(animated: true)
        
    }
    @IBAction func btn3(_ sender: Any) {
        print("Main 4")
    }
    
    
    
    
    
    
    @objc func swipeAction(swipe:UISwipeGestureRecognizer)
        {
            switch swipe.direction.rawValue {
            case 1:

//                performSegue(withIdentifier: gotomain3, sender: self)
                navigationController?.popViewController(animated: true)

            default:
                break
            }
        }
    
    

}
