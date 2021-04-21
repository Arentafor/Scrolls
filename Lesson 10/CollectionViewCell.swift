//
//  CollectionViewCell.swift
//  Lesson 10
//
//  Created by Виталий Крюков on 12.04.2021.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var discountLabel: UILabel!
    
    @IBOutlet weak var firstLabel: UILabel!
    
    @IBOutlet weak var secondLabel: UILabel!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var image: UIImageView!
    
    func initcell (item: shopingstruct) {
        image.image = UIImage(named: item.image)
        firstLabel.text = item.firstprice
        
        let attributedText : NSMutableAttributedString =  NSMutableAttributedString(string: firstLabel.text!)
                    attributedText.addAttributes([
                        NSAttributedString.Key.strikethroughStyle: NSUnderlineStyle.single.rawValue,
                        NSAttributedString.Key.strikethroughColor: UIColor.black,
                    ], range: NSMakeRange(0, attributedText.length))
        firstLabel.attributedText = attributedText
        
        secondLabel.text = item.secondprice
        discountLabel.text = item.discound
        nameLabel.text = item.namewear
    }
}

