//
//  ViewControllerScreen.swift
//  view-code-app
//
//  Created by Naiara de Almeida Pantuza on 09/08/23.
//

import UIKit

final class ViewControllerScreen: UIView {
  
  override init(frame: CGRect = .zero) {
    super.init(frame: frame)
    self.backgroundColor = .systemPink
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}
