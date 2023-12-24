//
//  SecondCollectionViewCell.swift
//  HW40_CollectionView
//
//  Created by Dawei Hao on 2023/12/24.
//

import UIKit

class SecondCollectionViewCell: UICollectionViewCell {

    static let identifier = "SecondCollectionViewCell"
    
    @IBOutlet weak var locationNameLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code

        let imageViewWidth: CGFloat = 75.0

        imageView.layer.cornerRadius = imageViewWidth
        imageView.clipsToBounds      = true
        imageView.image              = UIImage(named: "taiwan")
        imageView.layer.borderWidth  = 0.2
        imageView.layer.borderColor  = UIColor.lightGray.cgColor
        
        locationNameLabel.text                      = ""
        locationNameLabel.textColor                 = .darkGray
        locationNameLabel.adjustsFontSizeToFitWidth = true
        locationNameLabel.textAlignment             = .center
        locationNameLabel.font                      = UIFont.systemFont(ofSize: 15)

    }

    static func secondNib() -> UINib {
        return UINib(nibName: "SecondCollectionViewCell", bundle: nil)
    }

    public func configure(with image: UIImage) {
        imageView.image = image
    }

    override func prepareForReuse () {
        super.prepareForReuse()
        self.imageView.image = nil
        print("prepareForReuse")
    }

}
