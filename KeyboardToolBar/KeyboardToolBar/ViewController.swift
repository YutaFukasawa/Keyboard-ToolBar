//
//  ViewController.swift
//  KeyboardToolBar
//
//  Created by yfukasawa on 2018/12/18.
//  Copyright © 2018 yfukasawa. All rights reserved.
//

import UIKit

let dekoeView = UIView.init(frame: CGRect.init(x: 0, y: 0, width: 250, height: 250))

class ViewController: UIViewController, UITextViewDelegate {

  let textView = UITextView()
//  let dekoeButton = UIButton()

  override func viewDidLoad() {
    super.viewDidLoad()

    // textViewを作成する
    textView.frame = CGRect(x: 0, y: 150, width: 400, height: 500)
    textView.backgroundColor = UIColor.brown

    // textViewをviewに表示する
    view.addSubview(textView)
    textView.delegate = self

    let blue = UIColor.blue
    dekoeView.backgroundColor = blue
  }

  // keyboardにツールバーを表示する
  func keyboardToolBar() {
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
    textView.inputView = nil
    textView.reloadInputViews()
  }

  @objc func dekoeTapped() {
    textView.inputView = dekoeView
    textView.text = "DKDKDKDKDK"
    textView.reloadInputViews()
  }

  @objc func dekogaTapped() {
    textView.inputView = nil
    textView.text = "bbb"
    textView.reloadInputViews()
  }

  @objc func imageTapped() {
    textView.inputView = nil
    textView.text = "m,lp;fweg"
    textView.reloadInputViews()
  }

  @objc func sousyokuTapped() {
    textView.inputView = nil
    textView.text = "pa;kl,.fvsd"
    textView.reloadInputViews()
  }

  @objc func okTapped() {
    view.endEditing(true)
  }

  func textViewShouldBeginEditing(_ textView: UITextView) -> Bool {
    self.keyboardToolBar()
    return true
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
}

