//
//  Task.swift
//  DemoGithubActions
//
//  Created by Đỗ Lê Duy on 17/6/25.
//


import Foundation

class Task {
    let id: UUID
    var title: String
    var description: String
    var dueDate: Date
    private(set) var isCompleted: Bool
    private(set) var createdAt: Date
    private(set) var updatedAt: Date
    
    init(title: String, description: String, dueDate: Date) {
        self.id = UUID()
        self.title = title
        self.description = description
        self.dueDate = dueDate
        self.isCompleted = false
        self.createdAt = Date()
        self.updatedAt = Date()
    }
    
    func markAsCompleted() {
        isCompleted = true
        updatedAt = Date()
    }
    
    func update(title: String? = nil, description: String? = nil, dueDate: Date? = nil) {
        if let newTitle = title, !newTitle.isEmpty {
            self.title = newTitle
        }
        if let newDescription = description, !newDescription.isEmpty {
            self.description = newDescription
        }
        if let newDueDate = dueDate {
            self.dueDate = newDueDate
        }
        updatedAt = Date()
    }
    
    func isOverdue() -> Bool {
        return !isCompleted && dueDate < Date()
    }
    
    func daysUntilDue() -> Int? {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.day], from: Date(), to: dueDate)
        return components.day
    }
    
    static func printHello() -> String {
        return "Hello from Task class!"
    }
    
    static func printDuy() -> String {
        return "Hello from Duy!"
    }
    
    static func returnZero() -> String {
        return "0"
    }
}
