//
//  ViewController.swift
//  EmptyDataSet-Swift
//
//  Created by galenu on 11/20/2024.
//  Copyright (c) 2024 galenu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func emptyClick(_ sender: Any) {
        self.view.showEmptyDataView()
        
//        self.view.hiddenEmptyDataView()
    }
    
    @IBAction func loadfailedClick(_ sender: Any) {
        self.view.showLoadFailedView()
        
//        self.view.hiddenLoadFailedView()
    }
}

