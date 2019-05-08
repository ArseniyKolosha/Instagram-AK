//
//  PhotoGallery.swift
//  Instagram AK
//
//  Created by Ars on 3/15/19.
//  Copyright © 2019 ArsenIT. All rights reserved.
//

import Foundation
import UIKit
class PhotoGallery{
    var images = [UIImage]()
    
    init() {
        setupGallery()
    }
    
    func setupGallery(){
        for i in 0...10{
            let image = UIImage(named: "image\(i)")!
            images.append(image)
        }
    }
}
