//
//  ViewControllerScreenTests.swift
//  view-code-appTests
//
//  Created by Naiara de Almeida Pantuza on 11/08/23.
//

import SnapshotTesting
import XCTest
@testable import view_code_app

final class ViewControllerScreenTests: XCTestCase {
  
  func testViewControllerScreen() throws {

    let view = ViewControllerScreen()
    view.frame = UIScreen.main.bounds
    assertSnapshot(matching: view, as: .image, record: true)
  }
}


