//
//  CollectionViewController.swift
//  HW40_CollectionView
//
//  Created by Dawei Hao on 2023/12/18.
//

import UIKit

class CollectionViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!

    let pics: [Pics] = {
        var pics = [Pics]()
        for i in 0...20 {
            let pic = Pics(image: "pics\(i)")
            pics.append(pic)
        }
        return pics
    }()

    override func viewDidLoad() {
        super.viewDidLoad()


    }
}
extension CollectionViewController: UICollectionViewDelegate {

}


extension CollectionViewController: UICollectionViewDataSource {


    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return pics.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CollectionViewCell.reuseIdentifier, for: indexPath)
        let pics = pics[indexPath.item]
        cell.imageView?.image = UIImage(named: pics.image)


        return cell
    }
    

}
