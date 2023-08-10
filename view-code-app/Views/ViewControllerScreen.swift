//
//  ViewControllerScreen.swift
//  view-code-app
//
//  Created by Naiara de Almeida Pantuza on 09/08/23.
//

import UIKit

final class ViewControllerScreen: UIView {
  
  lazy var button: UIButton = {
    let buttonView = UIButton(frame: .zero)
    let color = UIColor(red: 240/255.0, green: 128/255.0, blue: 128/255.0, alpha: 1.0)
    buttonView.backgroundColor = color
    buttonView.setTitle("Fetch", for: .normal)
    return buttonView
  }()
  
  override init(frame: CGRect = .zero) {
    super.init(frame: frame)
    setupView()
  }
  
  required init?(coder: NSCoder) {
    fatalError("init(coder:) has not been implemented")
  }
}

extension ViewControllerScreen: AddViewCodeElement {
  func buildViewHierarchy() {
    addSubview(button)
  }
  
  func setupConstraints() {
    let safeArea = self.safeAreaLayoutGuide
    
    button.snp.makeConstraints { make in
      make.leading.equalToSuperview().offset(16)
      make.trailing.equalToSuperview().offset(-16)
      make.bottom.equalTo(safeArea).offset(-16)
      make.height.equalTo(50)
    }
  
  }
  
  func setupAdditionalConfiguration() {
    self.backgroundColor = .systemGray5
  }
}

