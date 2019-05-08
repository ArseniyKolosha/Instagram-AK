//
//  FullScreenViewController.swift
//  Instagram AK
//
//  Created by Ars on 3/15/19.
//  Copyright © 2019 ArsenIT. All rights reserved.
//

import UIKit

class FullScreenViewController: UIViewController {

    
    @IBOutlet weak var collectionView: UICollectionView!
    var photoGallery: PhotoGallery!
    let countCells = 1
    let identifire = "FullScreenCell"
    var indexPath: IndexPath!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
        collectionView.register(UINib(nibName: "FullScreenCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: identifire)
        collectionView.performBatchUpdates(nil) { (result) in
            self.collectionView.scrollToItem(at: self.indexPath, at: .centeredHorizontally, animated: false)
        }
    }
    
}

extension FullScreenViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return photoGallery.images.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: identifire, for: indexPath) as! FullScreenCollectionViewCell
        cell.photoView.image = photoGallery.images[indexPath.item]
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let frameCV = collectionView.frame
        let widthCell = frameCV.width / CGFloat(countCells)
        let heightCells = widthCell
        
        return CGSize(width: widthCell, height: heightCells)
    }

}
