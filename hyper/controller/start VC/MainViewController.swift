//
//  MainViewController.swift
//  hyper
//
//  Created by Moustafa on 2/7/20.
//  Copyright © 2020 Moustafa Ayman Ahmed. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var vView: UIView!
    @IBOutlet weak var MainLable: UILabel!
    @IBOutlet weak var secondLable: UILabel!
    @IBOutlet weak var theredLable: UILabel!
    @IBOutlet weak var startBtn: BtnStyle!
    override func viewDidLoad() {
        super.viewDidLoad()
        vView.roundCorners(corners: [.topLeft, .topRight], radius: 20.0)
        
        
        
//
//
//        MainLable.text=NSLocalizedString("MainLable", comment: "")
//        MainLable.text=LocalizationSystem.sharedInstance.localizedStringForKey(key: "MainLable", comment: "")
//         secondLable.text=LocalizationSystem.sharedInstance.localizedStringForKey(key: "secondLable", comment: "")
//        theredLable.text=LocalizationSystem.sharedInstance.localizedStringForKey(key: "theredLable", comment: "")
//        print(LocalizationSystem.sharedInstance.getLanguage())
//        startBtn.setTitle(LocalizationSystem.sharedInstance.localizedStringForKey(key: "startBtn" , comment: ""), for: .normal)
//        print(MainLable.text)
//        LanguageBtn.setTitle(LocalizationSystem.sharedInstance.getLanguage(), for: .normal)
//
        // Do any additional setup after loading the view.
        //vView.layer.cornerRadius=5.5
        
        
//        LanguageBtn.setTitle(LocalizationSystem.sharedInstance.getLanguage(), for: .normal)
        
    }
    
//    @IBAction func cahngeLanguage(_ sender: Any) {
//        if LocalizationSystem.sharedInstance.getLanguage()=="ar"
//        {
//            
//            LocalizationSystem.sharedInstance.setLanguage(languageCode: "en")
//            UIView.appearance().semanticContentAttribute = .forceLeftToRight
//        }
//        else
//        {
//            LocalizationSystem.sharedInstance.setLanguage(languageCode: "ar")
//            UIView.appearance().semanticContentAttribute = .forceRightToLeft
//        }
//        viewDidLoad()
//
//
//        let vc=self.storyboard?.instantiateViewController(withIdentifier: "mainVC") as! MainViewController
//        let apppDelgateee=UIApplication.shared.delegate as? AppDelegate
//        apppDelgateee?.window?.rootViewController=vc
//    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func getStarted(_ sender: Any) {
         performSegue(withIdentifier: gotomain2, sender: self)
    }
    
    
}
extension UIView {
   func roundCorners(corners: UIRectCorner, radius: CGFloat) {
        let path = UIBezierPath(roundedRect: bounds, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        let mask = CAShapeLayer()
        mask.path = path.cgPath
        layer.mask = mask
    }
    
}
