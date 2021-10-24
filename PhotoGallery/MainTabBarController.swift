//
//  MainTabBarController.swift
//  PhotoGallery
//
//  Created by Sergey on 09.10.2021.
//  класс нижнего бара

import UIKit

class MainTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .gray
        
        //объект класса PhotosCollectionViewController
        let photosVC = PhotosCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
        let likesVC = LikesCollectionViewController(collectionViewLayout: UICollectionViewFlowLayout())
       
        //содержит все контроллеры которые будут в таббаре
        viewControllers = [
            generateNavigationController(rootViewController:  photosVC, title: "Photos", image: #imageLiteral(resourceName: "gallery")),
            generateNavigationController(rootViewController:  likesVC, title: "Favorites", image: #imageLiteral(resourceName: "pngwing.com"))
        ]
    }
    //дублирующая функция
    private func generateNavigationController(rootViewController: UIViewController, title: String, image: UIImage) -> UIViewController {
        let navigationVC = UINavigationController(rootViewController: rootViewController)
        navigationVC.tabBarItem.title = title
        navigationVC.tabBarItem.image = image
        return navigationVC
    }
}
