//
//  collectionViewController.swift
//  UISample
//
//  Created by 김지섭 on 2016. 11. 11..
//  Copyright © 2016년 mino. All rights reserved.
//

import UIKit

class CollectionShowController: UIViewController {

   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.ShowBarcode.image = self.fromString(string: String(describing: barcode))
        //바코드 이미지로 변환
        self.ShowName.text = self.title
        //전달받은 string 띄우기
        
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var ShowName: UILabel!
    @IBOutlet weak var ShowBarcode: UIImageView!
    @IBOutlet weak var ShowBarcodeNumber: UILabel!
    
    var image = UIImage()
    var barcode : Int?

    
    
    
    
    
    // 바코드 이미지로 변환 함수
    func fromString(string: String) -> UIImage? {
        let data = string.data(using: String.Encoding.ascii)
        if let filter = CIFilter(name: "CICode128BarcodeGenerator") {
            filter.setValue(data, forKey: "inputMessage")
            let transform = CGAffineTransform(scaleX: 3, y: 3)
            
            if let output = filter.outputImage?.applying(transform) {
                return UIImage(ciImage: output)
            }
        }
        
        return nil
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
