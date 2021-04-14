//
//  CollectionViewCell.swift
//  Lesson 10
//
//  Created by Виталий Крюков on 12.04.2021.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var Image: UIImageView!
    
    @IBOutlet weak var FirstPriceTextField: UITextField!
    
    @IBOutlet weak var SecondPriceTextField: UITextField!
    
    @IBOutlet weak var NameWearTextField: UITextField!
    
    @IBOutlet weak var DiscountTextField: UILabel!
}
