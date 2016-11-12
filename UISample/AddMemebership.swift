//
//  AddMemebership.swift
//  UISample
//
//  Created by 김지섭 on 2016. 11. 11..
//  Copyright © 2016년 mino. All rights reserved.
//

import UIKit

class AddMemebership: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var paramName: UITextField!
    @IBOutlet weak var paramCode: UITextField!
    
    

    @IBAction func Add(_ sender: Any) {
        
        
        let vc = self.presentingViewController as? CollectionViewController
        vc?.Test2 = "End"
        self.presentingViewController?.dismiss(animated: true, completion: nil)
        
        

        
        

//        if let rvc = self.storyboard?.instantiateViewController(withIdentifier: "MembershipTab") as? CollectionViewController{
//            rvc.membershipName.append(self.paramName.text!)
//            rvc.barcode.append(Int(self.paramCode.text!)!)
//            rvc.membershipLogo.append(UIImage(named: "default"))
//            rvc.Test2 = "End"
//
////            self.presentedViewController?.dismiss(animated: true, completion: nil)
//            //            self.present(rvc, animated: true, completion:nil)
////                        self.navigationController?.pushViewController(rvc, animated: true)
//            _ = self.navigationController?.popViewController(animated: true)
//            
//        }
        
    }
   

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
