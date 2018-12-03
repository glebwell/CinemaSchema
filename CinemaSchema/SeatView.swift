//
//  SeatView.swift
//  CinemaSchema
//
//  Created by Gleb on 03/12/2018.
//  Copyright © 2018 Gleb Maltsev. All rights reserved.
//

import UIKit



class SeatView: UIButton {

  enum Status {
    case free
    case occupied
    case selected
  }

  private let colorMap = [Status.free : Constants.freeSeatColor,
                          Status.occupied : Constants.occupiedSeatColor,
                          Status.selected : Constants.selectedSeatColor]

  private struct Constants {
    static let freeSeatColor = UIColor.blue
    static let occupiedSeatColor = UIColor.gray
    static let selectedSeatColor = UIColor.green
  }

  override init(frame: CGRect) {
    super.init(frame: frame)
    commonInit()
  }

  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    commonInit()
  }

  private func configure(status: Status) {
    backgroundColor = colorMap[status]
  }

  var number : String {
    get {
      return currentTitle ?? ""
    }

    set {
      setTitle(newValue, for: .normal)
    }
  }


  var status = Status.free {
    willSet {
      configure(status: newValue)
    }
  }

  private func commonInit() {
    addTarget(self, action: #selector(onTapped), for: .touchUpInside)
  }

  deinit {
    removeTarget(self, action: #selector(onTapped), for: .touchUpInside)
  }

  @objc private func onTapped() {
    if status == .free {
      status = .selected
    } else if status == .selected {
      status = .free
    }
  }
}
