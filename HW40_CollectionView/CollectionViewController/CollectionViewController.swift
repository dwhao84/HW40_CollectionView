//
//  CollectionViewController.swift
//  HW40_CollectionView
//
//  Created by Dawei Hao on 2023/12/18.
//

import UIKit

class CollectionViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!

    private var images: [UIImage] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        let layout = UICollectionViewFlowLayout()
        layout.itemSize = CGSize(width: 128, height: 128)
        collectionView.collectionViewLayout = layout

        collectionView.register(MyCollectionViewCell.nib(), forCellWithReuseIdentifier: MyCollectionViewCell.identifier)

        collectionView.delegate = self
        collectionView.dataSource = self

        for _ in 0...20 {
            images.append(UIImage(named: "pic01")!)
            images.append(UIImage(named: "pic02")!)
            images.append(UIImage(named: "pic03")!)
            images.append(UIImage(named: "pic04")!)
            images.append(UIImage(named: "pic05")!)
            images.append(UIImage(named: "pic06")!)
            images.append(UIImage(named: "pic07")!)
            images.append(UIImage(named: "pic08")!)
            images.append(UIImage(named: "pic09")!)
            images.append(UIImage(named: "pic10")!)
            images.append(UIImage(named: "pic11")!)
            images.append(UIImage(named: "pic12")!)
            images.append(UIImage(named: "pic13")!)
            images.append(UIImage(named: "pic14")!)
            images.append(UIImage(named: "pic15")!)
            images.append(UIImage(named: "pic16")!)
            images.append(UIImage(named: "pic17")!)
            images.append(UIImage(named: "pic18")!)
            images.append(UIImage(named: "pic19")!)
            images.append(UIImage(named: "pic20")!)
            images.append(UIImage(named: "pic20")!)
        }
    }
}

extension CollectionViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        print("You tapped me")
    }
}

extension CollectionViewController: UICollectionViewDataSource {


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 20
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.identifier, for: indexPath) as! MyCollectionViewCell

        cell.configure(with: UIImage(named: "pic01")!)

        return cell
    }
}

extension CollectionViewController: UICollectionViewDelegateFlowLayout {

    // sizeForItemAt
    // This means how many item will show in collectionView.
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // 1.34 this value means to minus the space after we divide the three images space.
        let size = (self.view.frame.width / 3) - 1.34
        return CGSize(width: size, height: size)
    }

    // minimumLineSpacingForSectionAt
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }

    // minimumInteritemSpacingForSectionAt
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
}
