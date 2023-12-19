//
//  MyCollectionViewCell.swift
//  HW40_CollectionView
//
//  Created by Dawei Hao on 2023/12/19.
//

import UIKit

class MyCollectionViewCell: UICollectionViewCell {

    static let identifier = "MyCollectionViewCell"

    @IBOutlet var imageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    public func configure(with iamge: UIImage) {
        imageView.image = UIImage(named:"pic01")
    }

    static func nib() -> UINib {
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }

}
