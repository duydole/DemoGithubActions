//
//  DuyDoScreen.swift
//  DemoGithubActions
//
//  Created by Đỗ Lê Duy on 17/6/25.
//

import Foundation
import UIKit

class DuyDoScreen: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .white
        print("DuyDoScreen loaded")
    }
    
    func displayMessage() {
        print("Hello from DuyDoScreen!")
    }
    
    static func hello() -> String {
        return "Hello from DuyDoScreen!"
    }
}
