//
//  CinemaSchemaViewController.swift
//  CinemaSchema
//
//  Created by Gleb on 03/12/2018.
//  Copyright © 2018 Gleb Maltsev. All rights reserved.
//

import UIKit

class CinemaSchemaViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()

    let seat1 = SeatView(frame: CGRect(x: 10, y: 100, width: 50, height: 50))
    seat1.status = .free
    seat1.number = "1"

    let seat2 = SeatView(frame: CGRect(x: 110, y: 100, width: 50, height: 50))
    seat2.status = .occupied
    seat2.number = "2"

    let seat3 = SeatView(frame: CGRect(x: 210, y: 100, width: 50, height: 50))
    seat3.status = .selected
    seat3.number = "3"

    view.addSubview(seat1)
    view.addSubview(seat2)
    view.addSubview(seat3)


  }
}
