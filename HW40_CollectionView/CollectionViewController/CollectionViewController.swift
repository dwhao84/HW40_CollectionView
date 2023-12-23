//
//  CollectionViewController.swift
//  HW40_CollectionView
//
//  Created by Dawei Hao on 2023/12/18.
//

import UIKit
import SafariServices

class CollectionViewController: UIViewController, SFSafariViewControllerDelegate {

    @IBOutlet weak var collectionView: UICollectionView!

    private var images: [UIImage] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        let itemSpace:   Double = 4
        let columuCount: Double = 3
        let layout = UICollectionViewFlowLayout()
        let width = floor(collectionView.bounds.width - itemSpace * (columuCount - 1) / columuCount )
        layout.itemSize                = CGSize(width: width, height: width)

        collectionView.collectionViewLayout = layout
        collectionView.register(MyCollectionViewCell.nib(), forCellWithReuseIdentifier: MyCollectionViewCell.identifier)

        collectionView.delegate = self
        collectionView.dataSource = self

        self.navigationItem.title = "Taiwan Scene"
        self.navigationController?.navigationBar.prefersLargeTitles = true

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
            images.append(UIImage(named: "pic21")!)
        }
    }
}

extension CollectionViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        collectionView.deselectItem(at: indexPath, animated: true)
        print("You tapped me")
        print(indexPath.row)

        if let url = URL(string: placesAndUrl[indexPath.row].locationURL ) {
          let safari = SFSafariViewController(url: url)
          safari.delegate = self
          present(safari, animated: true)
        }
    }
}

extension CollectionViewController: UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 21
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.identifier, for: indexPath) as? MyCollectionViewCell else {
            fatalError("Failed to dequeue MyCollectionViewCell")
        }

        let image = self.images[indexPath.row]
        cell.configure(with: image)
        cell.locationName.text = placesAndUrl[indexPath.row].location

        print(placesAndUrl[indexPath.row].location)
        return cell
    }
}

extension CollectionViewController: UICollectionViewDelegateFlowLayout {
    // sizeForItemAt
    // This means how many item will show in collectionView.
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        // 1.34 this value means to minus the space after we divide the three images space.
        let widthSize = (self.view.frame.width / 3) - 1.4
        let heightSize = (self.view.frame.height / 5)
        return CGSize(width: widthSize, height: heightSize)
    }

    // vertical spacing
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }

    // horizontal spacing
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 2
    }
}
