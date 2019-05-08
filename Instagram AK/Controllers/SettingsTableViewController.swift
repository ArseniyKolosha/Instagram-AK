//
//  SettingsTableViewController.swift
//  Instagram AK
//
//  Created by Ars on 3/20/19.
//  Copyright © 2019 ArsenIT. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController {

    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var soundSwitch: UISwitch!
    @IBOutlet weak var volSlider: UISlider!
    
    let testString = "testString"
    let nameKey = "nameKey"
    let soundKey = "soundKey"
    let volKey = "volKey"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        loadSettings()
        
        
        
    }
    
    func loadSettings(){
        if let name = UserDefaults.standard.string(forKey: nameKey){
            nameField.text = name
        }
        soundSwitch.isOn = UserDefaults.standard.bool(forKey: soundKey)
        volSlider.value = UserDefaults.standard.float(forKey: volKey)
    }
    
    @IBAction func soundAction(_ sender: UISwitch) {
        UserDefaults.standard.set(sender.isOn, forKey: soundKey)
    }
    @IBAction func volAction(_ sender: UISlider) {
        UserDefaults.standard.set(sender.value, forKey: volKey)
    }
    
    
    @IBAction func changeNameAction(_ sender: UITextField) {
        print(sender.text)
        if (sender.text != nil){
            UserDefaults.standard.set(sender.text, forKey: nameKey)
        }
        
    }
    
}
