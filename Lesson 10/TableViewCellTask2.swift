//
//  TableViewCellTask2.swift
//  Lesson 10
//
//  Created by Виталий Крюков on 17.04.2021.
//

import UIKit

class TableViewCellTask2: UITableViewCell {
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var imageSettings: UIImageView!
    
    func initCellSettings (item:settings) {
        imageSettings.image = UIImage(named: item.imagesetting)
        label.text = item.namesetting
    }

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
