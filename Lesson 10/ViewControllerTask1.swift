//
//  ViewControllerTask1.swift
//  Lesson 10
//
//  Created by Виталий Крюков on 12.04.2021.
//

import UIKit
struct shopingstruct {
    
    struct imagestruct {
        var image = ["1","2","3","4","5","6"]
    }

    struct firstpricestruct {
        var firstprice = ["10990","9990", "3990", "6990", "5990", "2990"]
    }

    struct secondpricestruct {
        var secondprice = ["7990", "5990", "2490","4990", "5290","1990"]
    }

    struct discondstruct {
        var discound = ["-20%", "-40%", "-30%", "-35%", "-10%","-20%"]
    }

    struct namewearstruct {
        var namewear = ["Спортивный костюм","Футболка","Спортивный костюм","Футболка","Футболка","Футболка"]
    }
}
var im = shopingstruct.imagestruct.init()
var fi = shopingstruct.firstpricestruct.init()
var se = shopingstruct.secondpricestruct.init()
var di = shopingstruct.discondstruct.init()
var na = shopingstruct.namewearstruct.init()

class ViewControllerTask1: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}
extension ViewControllerTask1 : UICollectionViewDelegateFlowLayout,UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let w = UIScreen.main.bounds.size.width / 2
        return CGSize(width: w, height: w*2)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return im.image.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Celll", for: indexPath) as! CollectionViewCell
        cell.Image.image = UIImage(named: "\(indexPath.row + 1)")
        cell.FirstPriceTextField.text = fi.firstprice[indexPath.row]
        //cell.FirstPriceTextField. = UIColor.red
        cell.SecondPriceTextField.text = se.secondprice[indexPath.row]
        cell.DiscountTextField.text = di.discound[indexPath.row]
        cell.NameWearTextField.text = na.namewear[indexPath.row]
        return cell
    }
    
    
}
