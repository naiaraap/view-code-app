//
//  GridBoxViewTests.swift
//  GridBoxViewTests
//
//  Created by Naiara de Almeida Pantuza on 10/08/23.
//

import SnapshotTesting
import XCTest
@testable import view_code_app

final class GridBoxViewTests: XCTestCase {

    func testGridBoxView() throws {
      let view = GridBoxView()
      view.frame = CGRect(x: 0, y: 0, width: 100, height: 100) // Ajusta el tamaño según tus necesidades
      
      assertSnapshot(matching: view, as: .image, record: false)
    }

}
