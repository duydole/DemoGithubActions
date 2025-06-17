//
//  ABCScreen.swift
//  DemoGithubActions
//
//  Created by Đỗ Lê Duy on 17/6/25.
//

import Foundation
import UIKit

class ABCScreen: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .white
        print("ABCScreen loaded")
    }
    
    func displayMessage() {
        print("Hello from ABCScreen!")
    }
    
    static func hello() -> String {
        return "Hello from ABCScreen!"
    }
}
