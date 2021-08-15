//
//  Manhinh2.swift
//  UserDefaults
//
//  Created by Apple on 14/08/2021.
//

import UIKit

class Manhinh2: UIViewController {
    let biendb:UserDefaults = UserDefaults()
    
    @IBOutlet weak var lblHienThi: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        let chuoi:String = biendb.object(forKey: "data") as! String
        lblHienThi.text = chuoi
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
