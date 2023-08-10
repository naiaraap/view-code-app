//
//  GridBoxViewUITests.swift
//  GridBoxViewUITests
//
//  Created by Naiara de Almeida Pantuza on 10/08/23.
//

import XCTest
@testable import view_code_app

final class GridBoxViewUITests: XCTestCase {

    override func setUpWithError() throws {
      
    }

    override func tearDownWithError() throws {
      
    }

  func testGridBoxView() {
    let view = GridBoxView()
    view.frame = CGRect(x: 0, y: 0, width: 100, height: 100) // Ajusta el tamaño según tus necesidades
    
//    assertSnapshot(matching: view, as: .image, record: true)
  }

}
