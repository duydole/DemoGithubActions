//
//  TaskTests.swift
//  DemoGithubActions
//
//  Created by Đỗ Lê Duy on 17/6/25.
//

import XCTest
@testable import DemoGithubActions

class TaskTests: XCTestCase {
    
    var sut: Task!
    var futureDate: Date!
    var pastDate: Date!
    
    override func setUp() {
        super.setUp()
        let calendar = Calendar.current
        futureDate = calendar.date(byAdding: .day, value: 1, to: Date())!
        pastDate = calendar.date(byAdding: .day, value: -1, to: Date())!
        sut = Task(title: "Test Task", description: "Test Description", dueDate: futureDate)
    }
    
    override func tearDown() {
        sut = nil
        super.tearDown()
    }
    
    func testTaskInitialization() {
        XCTAssertNotNil(sut.id)
        XCTAssertEqual(sut.title, "Test Task")
        XCTAssertEqual(sut.description, "Test Description")
        XCTAssertEqual(sut.dueDate, futureDate)
        XCTAssertFalse(sut.isCompleted)
        XCTAssertNotNil(sut.createdAt)
        XCTAssertNotNil(sut.updatedAt)
    }
    
    func testMarkAsCompleted() {
        sut.markAsCompleted()
        XCTAssertTrue(sut.isCompleted)
        XCTAssertTrue(sut.updatedAt > sut.createdAt)
    }
    
    func testUpdateTask() {
        let newTitle = "Updated Task"
        let newDescription = "Updated Description"
        let newDueDate = Calendar.current.date(byAdding: .day, value: 2, to: Date())!
        
        sut.update(title: newTitle, description: newDescription, dueDate: newDueDate)
        
        XCTAssertEqual(sut.title, newTitle)
        XCTAssertEqual(sut.description, newDescription)
        XCTAssertEqual(sut.dueDate, newDueDate)
        XCTAssertTrue(sut.updatedAt > sut.createdAt)
    }
    
    func testUpdateWithEmptyValues() {
        let originalTitle = sut.title
        let originalDescription = sut.description
        let originalDueDate = sut.dueDate
        
        sut.update(title: "", description: "", dueDate: nil)
        
        XCTAssertEqual(sut.title, originalTitle)
        XCTAssertEqual(sut.description, originalDescription)
        XCTAssertEqual(sut.dueDate, originalDueDate)
    }
    
    func testIsOverdueWithPastDate() {
        sut = Task(title: "Overdue Task", description: "Test", dueDate: pastDate)
        XCTAssertTrue(sut.isOverdue())
    }
    
    func testIsOverdueWithFutureDate() {
        XCTAssertFalse(sut.isOverdue())
    }
}
