//
//  FirstViewController.swift
//  UISample
//
//  Created by mino on 2016. 11. 11..
//  Copyright © 2016년 mino. All rights reserved.
//

import UIKit

class CollectionViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {

    
    @IBOutlet weak var collectionView: UICollectionView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Test.text = Test2
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        print(self.membershipName.count)
        print("ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ")
        
        Test.text  = Test2
        
            
        
        

        
    }
    
    
    @IBAction func Next(_ sender: Any) {
    }

    @IBOutlet weak var Test: UILabel!
    var Test2 = "Hi"
    
    
    var membershipName = ["KT"]
    var membershipLogo = [UIImage(named: "ktLogo")]
    var barcode = [9423572839482256]

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        print("ㄴㄴㄴㄴㄴㄴㄴㄴㄴ\(self.membershipName.count)")
        

            
        return self.membershipName.count
            
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        
        cell.LogoShow.image = self.membershipLogo[indexPath.row]
        cell.LogoName.text = self.membershipName[indexPath.row]
        
        
        return cell
        
    }


    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showCollection"
        {
            
            let indexPaths = self.collectionView.indexPathsForSelectedItems!
            let indexPath = indexPaths[0] as NSIndexPath
            
            let show = segue.destination as! CollectionShowController
            
            show.barcode = self.barcode[indexPath.row]
            show.image = self.membershipLogo[indexPath.row]!
            show.title = self.membershipName[indexPath.row]
            
//            show.logoName.text = self.membershipName[indexPath.row]
//            show.barcode = self.barcode[indexPath.row]
//            show.logoName.text = self.membershipName[indexPath.row]
        }
    }
    
    @IBAction func unwindToMainViewController(segue : UIStoryboardSegue){
        
    }

    
    

}

