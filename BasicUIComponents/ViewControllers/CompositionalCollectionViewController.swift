//
//  CompositionalCollectionViewController.swift
//  BasicUIComponents
//
//  Created by Ali Kose on 25.09.2021.
//

import UIKit

class CompositionalCollectionViewController: UIViewController {
    @IBOutlet weak var collectionView: UICollectionView!
    
    private let data : [compositionalCVModel] = [
    compositionalCVModel(imageView: UIImage(named: "pikachu"), title: "Pikachu 1"),
    compositionalCVModel(imageView: UIImage(named: "pikachu"), title: "Pikachu 2"),
    compositionalCVModel(imageView: UIImage(named: "pikachu"), title: "Pikachu 3"),
    compositionalCVModel(imageView: UIImage(named: "pikachu"), title: "Pikachu 4"),
    compositionalCVModel(imageView: UIImage(named: "pikachu"), title: "Pikachu 5"),
    compositionalCVModel(imageView: UIImage(named: "pikachu"), title: "Pikachu 6"),
    compositionalCVModel(imageView: UIImage(named: "pikachu"), title: "Pikachu 7")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }
}

extension CompositionalCollectionViewController : UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data.count
    }
    
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "compositionalCell", for: indexPath) as! CompositionalCollectionViewCell
        let item = data[indexPath.item]
        cell.imageView.image = item.imageView
        cell.titleLabel.text = item.title
        return cell
    }
    
    
}
