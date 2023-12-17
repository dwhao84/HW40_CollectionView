//
//  SafariViewController.swift
//  HW40_CollectionView
//
//  Created by Dawei Hao on 2023/12/17.
//

import UIKit
import SafariServices

class SafariViewController: UIViewController {

    var urlAddress: URL = URL(fileURLWithPath: "")

    override func viewDidLoad() {
        super.viewDidLoad()

        print("Into the SafariViewController")

        presentSafari()

    }

    func presentSafari () {
        let safariVC = SFSafariViewController(url: urlAddress)
        present(safariVC, animated: true)
        safariVC.delegate = self
    }

}

extension SafariViewController: SFSafariViewControllerDelegate {
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        print("safariViewControllerDidFinish")
        dismiss(animated: true)
    }


}

