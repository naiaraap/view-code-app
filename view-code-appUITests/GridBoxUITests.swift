//
//  GridBoxUITests.swift
//  view-code-appUITests
//
//  Created by Naiara de Almeida Pantuza on 10/08/23.
//

import XCTest
import SnapshotTesting

@testable import view_code_app

final class GridBoxUITests: XCTestCase {
  
  override func setUpWithError() throws {
    continueAfterFailure = false
  }
  
  func testGridBoxViewSnapshots() {
    let frame = CGRect(x: 0, y: 0, width: 300, height: 300)
    let view = GridBoxView(frame: frame)
        assertSnapshot(matching: view, as: .image)
  }
  
}
