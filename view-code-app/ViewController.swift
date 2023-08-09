//
//  ViewController.swift
//  view-code-app
//
//  Created by Naiara de Almeida Pantuza on 09/08/23.
//

import UIKit

class ViewController: UIViewController {
  
  let screen = ViewControllerScreen()
  
  override func loadView() {
    self.view = screen
  }

  override func viewDidLoad() {
    super.viewDidLoad()
  }


}

