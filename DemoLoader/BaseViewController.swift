//
//  BaseViewController.swift
//  DemoLoader
//
//  Created by Neosoft on 20/12/23.
//

import UIKit
import NVActivityIndicatorView

class BaseViewController: UIViewController {

    var loaderView: NVActivityIndicatorView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLoaderView()
        
        // Do any additional setup after loading the view.
    }
    
    func setLoaderView(){
        let x = self.view.center.x
        let y = self.view.center.y

        let frame = CGRect(x: (x - 50), y: (y - 50), width: 100, height: 100)
        let activityIndicatorView = NVActivityIndicatorView(frame: frame)

        activityIndicatorView.type = .ballClipRotateMultiple
        activityIndicatorView.color = UIColor.red
        loaderView = activityIndicatorView
        self.view.addSubview(activityIndicatorView)
        startLoader()
    }
    
    func startLoader(){
        loaderView?.startAnimating()
    }
    
    func stopLoader(){
        loaderView?.stopAnimating()
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
