//
//  ViewController.swift
//  DemoLoader
//
//  Created by Neosoft on 20/12/23.
//

import UIKit
import NVActivityIndicatorView

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let x = self.view.center.x
        let y = self.view.center.y

        let frame = CGRect(x: (x - 50), y: (y - 50), width: 100, height: 100)
        let activityIndicatorView = NVActivityIndicatorView(frame: frame)

        activityIndicatorView.type = .ballClipRotateMultiple
        activityIndicatorView.color = UIColor.blue

        self.view.addSubview(activityIndicatorView)
        activityIndicatorView.startAnimating()
    }
}

