//
//  XYZScreen.swift
//  DemoGithubActions
//
//  Created by Đỗ Lê Duy on 17/6/25.
//

import Foundation
import UIKit

class XYZScreen: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .white
        print("XYZScreen loaded")
    }
    
    func displayMessage() {
        print("Hello from XYZScreen!")
    }
    
    static func hello() -> String {
        return "Hello from XYZScreen!"
    }
}
