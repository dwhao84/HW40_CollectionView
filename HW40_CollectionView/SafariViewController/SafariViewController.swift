//
//  SafariViewController.swift
//  HW40_CollectionView
//
//  Created by Dawei Hao on 2023/12/17.
//

import UIKit
import SafariServices

class SafariViewController: UIViewController {

    var urlAddress: String?

    override func viewDidLoad() {
        super.viewDidLoad()

        showUrl()

    }

    func showUrl () {
        if let url = URL(string: urlAddress ?? "") {
            UIApplication.shared.canOpenURL(url)
            print("Open URL Successful")
        } else {
            print("Can't open URL")
        }
    }
}

extension SafariViewController: SFSafariViewControllerDelegate {
    func safariViewControllerDidFinish(_ controller: SFSafariViewController) {
        print("safariViewControllerDidFinish")

        dismiss(animated: true)
    }


}

