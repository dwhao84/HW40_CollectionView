//
//  SafariViewController.swift
//  HW40_CollectionView
//
//  Created by Dawei Hao on 2023/12/17.
//

import UIKit
import WebKit


class SafariViewController: UIViewController, WKUIDelegate {

    @IBOutlet weak var webView: WKWebView!

    var urlString: String = ""
    var navigationBarTitle: String = ""

    override func loadView () {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        print("Into the SafariViewController")
        loadURL()
    }

    func loadURL () {
        let myURL: URL = URL(string: urlString)!
        let myRequest = URLRequest(url: myURL)
        webView.load(myRequest)
    }


}

extension SafariViewController: UIWebViewDelegate {

}

