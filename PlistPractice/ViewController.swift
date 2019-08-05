//
//  ViewController.swift
//  PlistPractice
//
//  Created by Aries Yang on 2019/8/5.
//  Copyright © 2019 Aries Yang. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        printOutPropertyList()
    }

    func printOutPropertyList() {
        if let path = Bundle.main.path(forResource: "MyProperty", ofType: "plist"),
            let xml = FileManager.default.contents(atPath: path) {
            do {

                if let propertyList = try PropertyListSerialization.propertyList(from: xml, options: .mutableContainersAndLeaves, format: nil) as? [String: Any] {
                    print("😇 Property List: \(String(describing: propertyList))")
                }
            } catch (let error) {
                print("👹 ERROR: \(error)")
            }
        }
    }
}

