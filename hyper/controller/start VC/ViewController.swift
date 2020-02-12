//
//  ViewController.swift
//  hyper
//
//  Created by Moustafa on 2/7/20.
//  Copyright © 2020 Moustafa Ayman Ahmed. All rights reserved.
//

import UIKit
import SVProgressHUD
import AVFoundation
class firstViewController: UIViewController {
    var timer=Timer()
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
      // SVProgressHUD.show(withStatus: "Shopping joy")
        self.timer.invalidate()
    }
    override func viewDidAppear(_ animated: Bool) {
        SVProgressHUD.show(withStatus: "Shopping_joy".localized)
        SVProgressHUD.setBackgroundColor(.clear)
        SVProgressHUD.setBorderColor(.white)
        SVProgressHUD.setForegroundColor(.white)
        SVProgressHUD.setForegroundColor(.white)
        SVProgressHUD.setFont(.systemFont(ofSize: 19.0))
        SVProgressHUD.setOffsetFromCenter(UIOffset(horizontal: (view.frame.size.width/2), vertical: (view.frame.size.height)-100))
        
        self.timer=Timer.scheduledTimer(timeInterval: 1.5, target: self, selector: #selector(self.updateBackground), userInfo: nil, repeats: false)
        SVProgressHUD.dismiss(withDelay: 3.0) {
//            let alert=UIAlertController(title: "wow alert", message: "svprogress done", preferredStyle: .alert)
//            let action=UIAlertAction(title: "go", style: .default) { (ac) in
//                print("gogogogogoo")
//            }
//            alert.addAction(action)
////            self.present(alert, animated: true, completion: nil)
//               let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle:nil)
            
            
            
            
            
           let nextViewController = self.storyboard?.instantiateViewController(withIdentifier: startNav) as! startNavigationController
                             self.present(nextViewController, animated:true, completion:nil)
            
        }
//        DispatchQueue.global().async {
//
//        }
//        dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
//            // time-consuming task
//            dispatch_async(dispatch_get_main_queue(), ^{
//                [SVProgressHUD dismiss];
//            });
//        });
//
    }
    @objc func updateBackground()
    {
        view.backgroundColor=#colorLiteral(red: 0.9921568627, green: 0.368627451, blue: 0.3254901961, alpha: 0.95)
        self.timer.invalidate()
       
        
        
        
       //
    }


}

