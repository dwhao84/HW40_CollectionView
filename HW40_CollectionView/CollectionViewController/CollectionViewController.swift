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
    @IBOutlet weak var secondCollectionView: UICollectionView!

    @IBOutlet weak var collectionViewFlowLayout: UICollectionViewFlowLayout!
    @IBOutlet weak var secondCollectionViewFlowLayout: UICollectionViewFlowLayout!
    


    let secondImage: UIImage = UIImage(named: "taiwan")!

    private var images: [UIImage] = []

    override func viewDidLoad() {
        super.viewDidLoad()

        // collectionView
        collectionView.register(MyCollectionViewCell.nib(), forCellWithReuseIdentifier: MyCollectionViewCell.identifier)
        collectionView.delegate = self
        collectionView.dataSource = self

        // secondCollectionView
        secondCollectionView.register(SecondCollectionViewCell.secondNib(), forCellWithReuseIdentifier: SecondCollectionViewCell.identifier)
        secondCollectionView.delegate   = self
        secondCollectionView.dataSource = self

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

        configureMyCollectionViewCell()
        configureSecondCollectionViewCell()
    }

    func configureMyCollectionViewCell() {
        let itemSpace: Double = 4
        let columnCount: Double = 3
        let width = floor((UIScreen.main.bounds.width - itemSpace * (columnCount - 1)) / columnCount)

        // Ensure collectionViewFlowLayout is initialized
        if let layout = collectionViewFlowLayout {
            layout.itemSize = CGSize(width: width, height: width)
            layout.estimatedItemSize = .zero
            layout.minimumLineSpacing = itemSpace
            layout.minimumInteritemSpacing = itemSpace
        } else {
            print("collectionViewFlowLayout is nil")
            // Handle the case where collectionViewFlowLayout is nil
            // For example, you might need to initialize it here
        }
    }


    func configureSecondCollectionViewCell () {
        let itemSpace: Double = 3
        let columnCount: Double = 1
        let width = floor((UIScreen.main.bounds.width - itemSpace * (columnCount - 1)) / columnCount)
        secondCollectionViewFlowLayout.itemSize = CGSize(width: width, height: width)
        secondCollectionViewFlowLayout.estimatedItemSize = .zero
        secondCollectionViewFlowLayout.minimumLineSpacing = itemSpace
        secondCollectionViewFlowLayout.minimumInteritemSpacing = itemSpace
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
        if (collectionView == secondCollectionView) {
            print("Load secondCollectionViewCell success")
            return 10
        }
        print("Load myCollectionViewCell success")
        return 21
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let image = self.images[indexPath.row]

            if collectionView === self.collectionView {

                guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: MyCollectionViewCell.identifier, for: indexPath) as? MyCollectionViewCell else {
                    fatalError("Failed to dequeue MyCollectionViewCell")
                }
                cell.configure(with: image)
                cell.locationName.text = placesAndUrl[indexPath.row].location
                print(placesAndUrl[indexPath.row].location)
                return cell

            } else if collectionView === self.secondCollectionView {

                guard let secondCell = collectionView.dequeueReusableCell(withReuseIdentifier: SecondCollectionViewCell.identifier, for: indexPath) as? SecondCollectionViewCell else {
                    fatalError("Failed to dequeue SecondCollectionViewCell")
                }
                secondCell.locationNameLabel.text = taiwanStateData[indexPath.row].cityName
                secondCell.imageView.image = secondImage
                secondCell.backgroundColor = .red
                return secondCell
            } else {
                fatalError("Unhandled collection view")
            }
        }

}
