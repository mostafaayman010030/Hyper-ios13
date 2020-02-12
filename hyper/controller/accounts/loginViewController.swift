//
//  loginViewController.swift
//  hyper
//
//  Created by Moustafa on 2/8/20.
//  Copyright © 2020 Moustafa Ayman Ahmed. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    @IBAction func back(_ sender: Any) {
        navigationController?.popViewController(animated: true)
    }
    @IBAction func login(_ sender: Any)
    {
        performSegue(withIdentifier:"fromlog_create" , sender: self)
    }
    
    
    @IBAction func forgetPaswword(_ sender: Any)
    {
        performSegue(withIdentifier:"fromlog_forget" , sender: self)
    }

}
