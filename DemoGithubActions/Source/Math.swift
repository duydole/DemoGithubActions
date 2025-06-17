//
//  Math.swift
//  DemoGithubActions
//
//  Created by Đỗ Lê Duy on 13/6/25.
//

import Foundation

class Math {
    // Write methods about Math
    static func add(_ a: Int, _ b: Int) -> Int {
        return a + b
    }
    
    static func subtract(_ a: Int, _ b: Int) -> Int {
        return a - b
    }
    
    static func multiply(_ a: Int, _ b: Int) -> Int {
        return a * b
    }
    
    static func divide(_ a: Int, _ b: Int) -> Int? {
        guard b != 0 else { return nil }
        return a / b
    }
    
    static func hello() -> String {
        "hello"
    }
}
