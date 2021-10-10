//
//  PhotosCollectionViewController.swift
//  PhotoGallery
//
//  Created by Sergey on 10.10.2021.
//

import UIKit

class PhotosCollectionViewController: UICollectionViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView.backgroundColor = .orange
        setupNavigationBar()
        setupCollectionView()
    }
    
    //функция настройки collectionView
    private func setupCollectionView() {
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "CellId")
    }
    
    //функция настройки NavigationBar
    private func setupNavigationBar() {
        let titleLabel = UILabel()
        titleLabel.text = "Photos"
        titleLabel.font = UIFont.systemFont(ofSize: 15, weight: .medium)
        titleLabel.textColor = #colorLiteral(red: 0.502007544, green: 0.4980560541, blue: 0.4979303479, alpha: 1)
        navigationItem.leftBarButtonItem = UIBarButtonItem.init(customView: titleLabel)
    
    }
    
    //метод отвечает за количество ячеек
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    //метод отвечает за настройку конкретной ячейки
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CellId", for: indexPath)
        cell.backgroundColor = .red
        return cell
    }
}
