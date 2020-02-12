//
//  MainTabBarController.swift
//  hyper
//
//  Created by Moustafa on 2/8/20.
//  Copyright © 2020 Moustafa Ayman Ahmed. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        UITabBar.appearance().tintColor=#colorLiteral(red: 1, green: 0.3028177766, blue: 0.3402857739, alpha: 0.95)
        UITabBar.appearance().barTintColor=#colorLiteral(red: 0.9888835092, green: 0.9888835092, blue: 0.9888835092, alpha: 1)
        tabBar.unselectedItemTintColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        tabBar.itemWidth=20.0
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
