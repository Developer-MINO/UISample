//
//  AddMemebership.swift
//  UISample
//
//  Created by 김지섭 on 2016. 11. 11..
//  Copyright © 2016년 mino. All rights reserved.
//

import UIKit


class AddMemebership: UIViewController {
      // 멤버쉽 추가 페이지
    
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
        // 추가 버튼 누를시
        
        var ad = UIApplication.shared.delegate as? AppDelegate
        // 앱델리게이트 내부 변수 사용하기
        
        ad?.membershipName.append(self.paramName.text!)
        ad?.barcode.append(Int(self.paramCode.text!)!)
        ad?.membershipLogo.append(UIImage(named: "default"))
        // 배열 내에 변수 추가
        
        self.navigationController?.popViewController(animated: true)
        // 화면 되돌아가기
    }
    

}
