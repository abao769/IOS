//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by Apple on 15/08/2021.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    
    @IBOutlet weak var txtID: UITextField!
    @IBOutlet weak var txtTen: UITextField!
    @IBOutlet weak var txtTuoi: UITextField!
    @IBOutlet weak var lblKQ: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnInsert(_ sender: Any) {
        let appDel:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDel.persistentContainer.viewContext
        let newKH = NSEntityDescription.insertNewObject(forEntityName: "KhachHang", into: context)
        newKH.setValue(Int(txtID.text!), forKey: "id")
        newKH.setValue(txtTen.text, forKey: "tenKH")
        newKH.setValue(Int(txtTuoi.text!), forKey: "tuoiKH")
        
        do{
            try context.save()
            print("insert success")
        }catch{
            print("error")
        }
    }
    var arr:[String] = []
    
    @IBAction func btnShow(_ sender: Any) {
        let appDel:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDel.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "KhachHang")
        request.returnsObjectsAsFaults = false
        do {
            let result = try context.execute(request)
            for data in result as! [NSManagedObject] {
                let userName = data.value(forKey: "tenKH") as! String
                arr.append(userName)
            }
            lblKQ.text = "\(arr)"
        }catch{
            print("error")
        }
    }
    
    @IBAction func btnDel(_ sender: Any) {
        let appDel:AppDelegate = UIApplication.shared.delegate as! AppDelegate
        let context = appDel.persistentContainer.viewContext
        let request = NSFetchRequest<NSFetchRequestResult>(entityName: "KhachHang")
        request.returnsObjectsAsFaults = false
        do {
            let result = try context.execute(request)
            lblKQ.text = "\(arr)"
        }catch{
            print("error")
        }
    }
}
