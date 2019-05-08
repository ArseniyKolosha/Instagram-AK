//
//  FullScreenCollectionViewCell.swift
//  Instagram AK
//
//  Created by Ars on 3/15/19.
//  Copyright © 2019 ArsenIT. All rights reserved.
//

import UIKit

class FullScreenCollectionViewCell: UICollectionViewCell, UIScrollViewDelegate {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var photoView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        self.scrollView.delegate = self
        self.scrollView.minimumZoomScale = 1.0
        self.scrollView.maximumZoomScale = 3.5
    }
    func viewForZooming(in scrollView: UIScrollView) -> UIView? {
        return photoView
    }
    func scrollViewDidEndZooming(_ scrollView: UIScrollView, with view: UIView?, atScale scale: CGFloat) {
        scrollView.zoomScale = 1.0
    }
}
