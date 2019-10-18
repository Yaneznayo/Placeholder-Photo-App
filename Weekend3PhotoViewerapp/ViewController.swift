//
//  ViewController.swift
//  Weekend3PhotoViewerapp
//
//  Created by Christopher Pung on 10/18/19.
//  Copyright © 2019 Mobile Apps Company. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView! {
        didSet {
            tableView.isHidden = false
            tableView.backgroundColor = UIColor(red:1.0, green: 1.0, blue: 0.1, alpha: 1.0)
        }
    }
    @IBOutlet weak var collectionView: UICollectionView! {
        didSet {
            collectionView.isHidden = true
            collectionView.backgroundColor = UIColor(red: 1.0, green: 0.4, blue: 0.4, alpha: 1.0)
        }
    }
    @IBOutlet weak var switchButton: UIBarButtonItem!
    
    var isTableVisible = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func switchButtonAction(_ sender: Any) {
        if isTableVisible {
            tableView.isHidden = true
            collectionView.isHidden = false
        }
        else {
            tableView.isHidden = false
            collectionView.isHidden = true
        }
        isTableVisible = !isTableVisible
    }
}

