//
//  ViewController.swift
//  CollectionViewTest
//
//  Created by Yusuf Yigit on 12.01.2019.
//  Copyright © 2019 Yusuf Yigit. All rights reserved.
//

import UIKit

class ViewController: UIViewController , UICollectionViewDelegate , UICollectionViewDataSource{
   
    
    

    
    
    let array:[String] = ["alien-1","alien-2","alien-3","alien-4","alien-5"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return array.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Cell", for: indexPath) as! CollectionViewCell
        
        cell.imageView.image = UIImage(named: array[indexPath.row] + ".png")
        return cell
        
    }

    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        print (array[indexPath.row])
    }

}

