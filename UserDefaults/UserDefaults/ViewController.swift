//
//  ViewController.swift
//  UserDefaults
//
//  Created by Apple on 14/08/2021.
//

import UIKit

class ViewController: UIViewController {
    let bienDB:UserDefaults = UserDefaults()
    @IBOutlet weak var txtNhap: UITextField!
    @IBAction func btnChuyenMan2(_ sender: Any) {
        bienDB.set(txtNhap.text!, forKey: "data")
        let  scr = storyboard?.instantiateViewController(withIdentifier: "MH2") as! Manhinh2
        navigationController?.pushViewController(scr, animated: true)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
}

