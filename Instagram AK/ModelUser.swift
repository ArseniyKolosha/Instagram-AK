//
//  ModelUser.swift
//  Instagram AK
//
//  Created by Ars on 3/29/19.
//  Copyright © 2019 ArsenIT. All rights reserved.
//

import Foundation
import UIKit
import MapKit

class ModelUser {
    var users = [[User]]()
    init() {
        setup()
    }
    
    func setup() {
        let man1 = User(name: "Николай", city: "Москва", image: UIImage(named: "man2")!, gender: .male, coordinate: CLLocationCoordinate2D(latitude: 51.51998, longitude: -0.1437))
        let man2 = User(name: "Пётр", city: "Киев", image: UIImage(named: "man3")!, gender: .male, coordinate: CLLocationCoordinate2D(latitude: 51.52998, longitude: -0.1537))
        
        let manArray = [man1, man2]
        
        let woman1 = User(name: "Катя", city: "Львов", image: UIImage(named: "woman")!, gender: .female, coordinate: CLLocationCoordinate2D(latitude: 51.51978, longitude: -0.1447))
        let woman2 = User(name: "Елена", city: "Полтава", image: UIImage(named: "woman2")!, gender: .female, coordinate: CLLocationCoordinate2D(latitude: 51.51698, longitude: -0.1457))
        
        let womanArray = [woman1, woman2]
        
        users.append(manArray)
        users.append(womanArray)
    }
}
