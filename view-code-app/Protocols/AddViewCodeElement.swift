//
//  AddViewCodeElement.swift
//  view-code-app
//
//  Created by Naiara de Almeida Pantuza on 09/08/23.
//

import UIKit
import SnapKit

protocol AddViewCodeElement: AnyObject {
  func buildViewHierarchy()
  func setupConstraints()
  func setupAdditionalConfiguration()
  func setupView()
}

extension AddViewCodeElement {
  func setupView() {
    buildViewHierarchy()
    setupConstraints()
    setupAdditionalConfiguration()
  }
}
