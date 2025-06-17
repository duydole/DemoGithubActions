//
//  DemoGithubActionsTests.swift
//  DemoGithubActionsTests
//
//  Created by Đỗ Lê Duy on 6/5/25.
//

import Testing
@testable import DemoGithubActions

struct DemoGithubActionsTests {

    @Test func example() async throws {
        // Write your test here and use APIs like `#expect(...)` to check expected conditions.
    }

    @Test func testAdd() async throws {
        let result = Math.add(2, 3)
        #expect(result == 5)
    }
    
    @Test func testSubtract() async throws {
        let result = Math.subtract(5, 3)
        #expect(result == 2)
    }
    
    @Test func testMultiply() async throws {
        let result = Math.multiply(2, 3)
        #expect(result == 6)
    }
    
    @Test func testDivide() async throws {
        let result = Math.divide(6, 3)
        #expect(result == 2)
    }
    
    @Test func testHelloWorld() async throws {
        let result = Math.hello()
        #expect(result == "hello")
    }
    
    @Test
    func testTaskPrintHello() async throws {
        let result = Task.printHello()
        #expect(result == "Hello from Task class!")
    }

    @Test
    func testTaskPrintHello2() async throws {
        let result = Task.printDuy()
        #expect(result == "Hello from Duy!")
    }
}
