//
//  CollectionViewController.swift
//  HW40_CollectionView
//
//  Created by Dawei Hao on 2023/12/18.
//

import UIKit

class CollectionViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!

    override func viewDidLoad() {
        super.viewDidLoad()

        let pics: [Pics] = {
            var pics = [Pics]()
            for i in 0...20 {
                let pic = Pics(pics: "pics\(i)")
                pics.append(pic)
            }
            return pics
        }()
    }
    


}
