//
//  ViewController.swift
//  DAy8iOS
//
//  Created by MacStudent on 2019-03-12.
//  Copyright © 2019 Emil Abraham. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        self.readInformationPlist()
        // Do any additional setup after loading the view, typically from a nib.
    }
    func readInformationPlist() {
        if let bundlePath = Bundle.main.path(forResource: "employee", ofType: "plist") {
            let dictionary = NSMutableDictionary(contentsOfFile: bundlePath)
            
            print(dictionary!.description)
            let countryList=dictionary!["countries"] as! NSArray
            for i in countryList{
                print(i)
            }
            print("**********************\nEmployee Details\n**********************\n////////////////////////////////")
            let employeeList=dictionary!["employees"] as! NSArray
            for e in employeeList{
                let ed=e as! NSDictionary
                print("Employee ID: \(ed["eid"]!)")
                print("Employee name: \(ed["ename"]!)")
                print("Salary: \(ed["salary"]!)")
                print("////////////////////////////////")
            }
        }
    }
}

