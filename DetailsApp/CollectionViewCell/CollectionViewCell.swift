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
    
    // Static attribute with .xib file name related to this ViewCell
    static let identifier = "CollectionViewCell"
    
    // Static method to return the instance of .xib file related to this ViewCell
    static func instanceOfNib() -> UINib {
        return UINib(nibName: CollectionViewCell.identifier, bundle: Bundle.main)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // Public methot to set the name and image of 
    func setCellData(name: String, image: UIImage) {
        self.labelName.text = name
        self.imageViewCell.image = image
    }
}
