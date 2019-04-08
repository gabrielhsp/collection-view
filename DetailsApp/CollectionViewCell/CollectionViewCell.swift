//
//  CollectionViewCell.swift
//  DetailsApp
//
//  Created by Gabriel Henrique Santos Pereira on 08/04/19.
//  Copyright © 2019 Gabriel Henrique Santos Pereira. All rights reserved.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    @IBOutlet private weak var imageViewCell: UIImageView!
    @IBOutlet private weak var labelName: UILabel!
    
    static let identifier = "CollectionViewCell"
    
    static func instanceOfNib() -> UINib {
        return UINib(nibName: CollectionViewCell.identifier, bundle: Bundle.main)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func setCellData(name: String, image: UIImage) {
        self.labelName.text = name
        self.imageViewCell.image = image
    }
}
