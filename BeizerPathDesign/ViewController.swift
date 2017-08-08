//
//  ViewController.swift
//  BeizerPathDesign
//
//  Created by Next on 21/04/17.
//  Copyright © 2017 Next. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mMainVIew: CurvedView!
    @IBOutlet weak var mImageBackgroundView: UIView!
    
    @IBOutlet weak var mImageView: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewDidAppear(_ animated: Bool) {
        mImageBackgroundView.layer.cornerRadius = mImageBackgroundView.frame.width/2
       
        mImageView.layer.cornerRadius = mImageView.frame.width/2
        
        self.view.layoutIfNeeded()
    }
    override func viewWillAppear(_ animated: Bool) {
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

