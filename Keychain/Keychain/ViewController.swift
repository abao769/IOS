//
//  ViewController.swift
//  Keychain
//
//  Created by Apple on 14/08/2021.
//

import UIKit
import KeychainAccess

class ViewController: UIViewController {

    @IBOutlet weak var lblHien: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        //laod keychain
        let keychain = Keychain(service: "abao769.Keychain")
        self.lblHien.text = keychain["Điểm Cao"]
    }

    @IBAction func btnSave(_ sender: Any) {
        self.lblHien.text = "Điểm Cao: 1000"
        let hien = self.lblHien.text
        // save data in Keychain
        let keychain = Keychain(service: "abao769.Keychain")
        keychain["Điểm Cao"] = hien
        
    }
    
}

