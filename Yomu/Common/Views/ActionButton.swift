//
//  ActionButton.swift
//  Yomu
//
//  Created by Sendy Halim on 8/5/16.
//  Copyright © 2016 Sendy Halim. All rights reserved.
//

import AppKit

class ActionButton: NSButton {
  override func viewDidMoveToWindow() {
    super.viewDidMoveToWindow()

    let paragraphStyle = NSMutableParagraphStyle()
    paragraphStyle.alignment = .center

    attributedTitle = NSAttributedString(string: title, attributes: [
      NSAttributedStringKey.foregroundColor: Config.style.actionButtonColor,
      NSAttributedStringKey.paragraphStyle: paragraphStyle,
      NSAttributedStringKey.font: NSFont.systemFont(ofSize: 13, weight: NSFont.Weight.thin)
    ])
  }
}
