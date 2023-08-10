//
//  GridBoxView.swift
//  view-code-app
//
//  Created by Naiara de Almeida Pantuza on 10/08/23.
//

import UIKit

final class GridBoxView: UIView {
  
  lazy var imageView: UIImageView = {
    let view = UIImageView(frame: .zero)
    view.backgroundColor = .green
    return view
  }()
  
  
  override init(frame: CGRect = .zero) {
    super.init(frame: frame)
    setupView()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

extension GridBoxView: AddViewCodeElement {
  func buildViewHierarchy() {
    addSubview(imageView)
  }
  
  func setupConstraints() {
    imageView.snp.makeConstraints { make in
      make.height.equalTo(50)
      make.width.equalTo(50)
      make.top.left.equalToSuperview().offset(20)
    }
  }

func setupAdditionalConfiguration() {
  
  }
}


