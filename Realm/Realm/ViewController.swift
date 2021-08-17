//
//  ViewController.swift
//  Realm
//
//  Created by Apple on 15/08/2021.
//

import UIKit
import RealmSwift

class ViewController: UIViewController {

    let realm = try! Realm()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        render()
        
    }
    func render() {
        let people = realm.objects(Person.self)
        for person in people {
            let fisrtName = person.fistName
            let lastName = person.lastName
            let fullName = "\(fisrtName) \(lastName)"
            
            let label = UILabel(frame: view.bounds)
            label.text = fullName
            label.textAlignment = .center
            label.numberOfLines = 0
            view.addSubview(label)
            label.font = UIFont(name: "Helvetica", size: 42)
            
            
        }
        
    }
    func save() {
        let joe = Person()
        joe.firstName = "Joe"
        joe.lastName = "Smith"
        realm.beginWrite()
        
        realm.add(joe)
        
        try! realm.commitWrite()
    }

}

class Person: Object {
    @objc dynamic var firstName: String = ""
    @objc dynamic var lastName: String = ""
    @objc dynamic var age:Int = 0
    
}
