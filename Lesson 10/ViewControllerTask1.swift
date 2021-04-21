//
//  ViewControllerTask1.swift
//  Lesson 10
//
//  Created by Виталий Крюков on 12.04.2021.
//

import UIKit
struct shopingstruct {
    
    var image: String
    var firstprice:String
    var secondprice:String
    var discound:String
    var namewear:String
}


class ViewControllerTask1: UIViewController {
    
    let data = [
                shopingstruct(image: "1", firstprice: "10990", secondprice: "7990", discound: "-20%", namewear: "Спортивный костюм"),
                shopingstruct(image: "2", firstprice: "9990", secondprice: "5990", discound: "-40%", namewear: "Футболка"),
                shopingstruct(image: "3", firstprice: "3990", secondprice: "2490", discound: "-30%", namewear: "Спортивный костюм"),
                shopingstruct(image: "4", firstprice: "6990", secondprice: "4990", discound: "-35%", namewear: "Футболка"),
                shopingstruct(image: "5", firstprice: "5990", secondprice: "5290", discound: "-10%", namewear: "Футболка"),
                shopingstruct(image: "6", firstprice: "2990", secondprice: "1990", discound: "-20%", namewear: "Футболка")]

}
extension ViewControllerTask1 : UICollectionViewDelegateFlowLayout,UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let w = UIScreen.main.bounds.size.width / 2
        return CGSize(width: w, height: w*2)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Celll", for: indexPath) as! CollectionViewCell
       
        cell.initcell(item: data[indexPath.row])
        
        return cell
    }
    
    
}
