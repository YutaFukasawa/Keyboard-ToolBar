//
//  ViewController.swift
//  KeyboardToolBar
//
//  Created by yfukasawa on 2018/12/18.
//  Copyright © 2018 yfukasawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    let textView = UITextView()
    textView.frame = CGRect(x: 0, y: 150, width: 500, height: 500)
    textView.backgroundColor = UIColor.brown
    view.addSubview(textView)
  }

//  func keyboardToolBar() {
//    let toolBar = UIToolbar()
//    let inputButton = UIBarButtonItem(title: "入力", style: .plain, target: self, action: #selector(inputTapped))
//    let dekoeButton = UIBarButtonItem(title: "デコ絵", style: .plain, target: self, action: #selector(inputTapped))
//    let dekogaButton = UIBarButtonItem(title: "デコ画", style: .plain, target: self, action: #selector(inputTapped))
//    let imageButton = UIBarButtonItem(title: "写真", style: .plain, target: self, action: #selector(inputTapped))
//    let sousyokuButton = UIBarButtonItem(title: "装飾", style: .plain, target: self, action: #selector(inputTapped))
//    let okButton = UIBarButtonItem(title: "OK", style: .plain, target: self, action: #selector(inputTapped))
//  }
//
//  func inputTapped() {
//
//  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

