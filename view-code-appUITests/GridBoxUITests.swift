//
//  GridBoxUITests.swift
//  view-code-appUITests
//
//  Created by Naiara de Almeida Pantuza on 10/08/23.
//


import SnapshotTesting
import XCTest
@testable import view_code_app

class GridBoxUITests: XCTestCase {
  func testGridBoxView() {
    let view = GridBoxView()
    view.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
    
        assertSnapshot(matching: view, as: .image, record: true)
  }
}
