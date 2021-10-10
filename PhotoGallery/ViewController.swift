//
//  ViewController.swift
//  PhotoGallery
//
//  Created by Sergey on 09.10.2021.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let photosVC = PhotosCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
        let navigationVC = UINavigationController(rootViewController: photosVC)

        // Do any additional setup after loading the view.
    }


}

