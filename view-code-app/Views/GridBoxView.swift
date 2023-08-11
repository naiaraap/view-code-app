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
  
  lazy var textContainer: UIStackView = {
    let view = UIStackView(frame: .zero)
    view.axis = .vertical
    view.distribution = .fillEqually
    view.spacing = 8.0
    return view
  }()
  
  lazy var title: UILabel = {
    let view = UILabel(frame: .zero)
    view.text = "Title"
    view.font = UIFont.systemFont(ofSize: 6, weight: .bold)
    view.backgroundColor = .orange
    return view
  }()
  
  lazy var subtitle: UILabel = {
    let view = UILabel(frame: .zero)
    view.text = "Subtitle"
    view.font = UIFont.systemFont(ofSize: 6, weight: .regular)
    view.backgroundColor = .red
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
    textContainer.addArrangedSubview(title)
    textContainer.addArrangedSubview(subtitle)
    addSubview(textContainer)
  }
  
  func setupConstraints() {
    imageView.snp.makeConstraints { make in
      make.height.equalToSuperview().multipliedBy(0.7)
      make.width.equalTo(imageView.snp.height)
      make.centerX.equalToSuperview()
    }
    
    textContainer.snp.makeConstraints { make in
      make.width.equalTo(imageView.snp.width)
      make.top.equalTo(imageView.snp.bottom).offset(8)
      make.centerX.equalTo(imageView.snp.centerX)
    }
  }

func setupAdditionalConfiguration() {
  
  }
}


