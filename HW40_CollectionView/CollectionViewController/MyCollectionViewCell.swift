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
    @IBOutlet weak var locationName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

        locationName.textColor = .darkGray
        locationName.textAlignment = .center
        locationName.adjustsFontSizeToFitWidth = true
        locationName.font = UIFont.systemFont(ofSize: 10)

        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 5
        imageView.clipsToBounds = true
    }
    
    public func configure(with image: UIImage) {
        imageView.image = image
    }

    static func nib() -> UINib {
        return UINib(nibName: "MyCollectionViewCell", bundle: nil)
    }

    // Clear up the photo or setup as default photo.
    override func prepareForReuse () {
        super.prepareForReuse()
        self.imageView.image = nil
        print("prepareForReuse")
    }
}
