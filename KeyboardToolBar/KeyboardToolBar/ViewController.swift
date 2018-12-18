//
//  ViewController.swift
//  KeyboardToolBar
//
//  Created by yfukasawa on 2018/12/18.
//  Copyright © 2018 yfukasawa. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextViewDelegate {

  let textView = UITextView()

  override func viewDidLoad() {
    super.viewDidLoad()

    // textViewを作成する
    textView.frame = CGRect(x: 0, y: 150, width: 400, height: 500)
    textView.backgroundColor = UIColor.brown

    // textViewをviewに表示する
    view.addSubview(textView)
    textView.delegate = self

    // keyboardにツールバーを表示する
    let toolBar = UIToolbar()
    toolBar.tintColor = UIColor(red: 76/255, green: 217/255, blue: 100/255, alpha: 1)
    let inputButton = UIBarButtonItem(title: "入力", style: .plain, target: self, action: #selector(inputTapped))
    let dekoeButton = UIBarButtonItem(title: "デコ絵", style: .plain, target: self, action: #selector(dekoeTapped))
    let dekogaButton = UIBarButtonItem(title: "デコ画", style: .plain, target: self, action: #selector(dekogaTapped))
    let imageButton = UIBarButtonItem(title: "写真", style: .plain, target: self, action: #selector(imageTapped))
    let sousyokuButton = UIBarButtonItem(title: "装飾", style: .plain, target: self, action: #selector(sousyokuTapped))
    let okButton = UIBarButtonItem(title: "OK", style: .plain, target: self, action: #selector(okTapped))
    toolBar.items = [inputButton, dekoeButton, dekogaButton, imageButton, sousyokuButton, okButton]
    toolBar.sizeToFit()
    textView.inputAccessoryView = toolBar
  }

  @objc func inputTapped() {
    textView.text = "fgkmweopfgkwefgkwep@fkew"
  }

  @objc func dekoeTapped() {
    textView.text = "aaa"
  }

  @objc func dekogaTapped() {
    textView.text = "bbb"
  }

  @objc func imageTapped() {
    textView.text = "m,lp;fweg"
  }

  @objc func sousyokuTapped() {
    textView.text = "pa;kl,.fvsd"
  }

  @objc func okTapped() {
    view.endEditing(true)
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }
}

