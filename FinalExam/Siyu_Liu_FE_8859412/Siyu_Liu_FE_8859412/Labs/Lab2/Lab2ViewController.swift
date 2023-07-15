//
//  ViewController.swift
//  test2
//
//  Created by JYJ on 2023/1/17.
//  Copyright © 2023 MengWang. All rights reserved.
//

import UIKit

class Lab2ViewController: UIViewController {
    var count = 0
    var step = 2
    var toggle = false

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet var label: UILabel!
    @IBAction func add(_ sender: Any) {
        count += step
        label.text = String(count)
    }

    @IBAction func desc(_ sender: Any) {
        count -= step
        label.text = String(count)
    }

    @IBAction func reset(_ sender: Any) {
        count = 0
        step = 2
        step_two.setTitle("step=2", for: .normal)
        toggle = false
        label.text = "0"
    }

    @IBOutlet var step_two: UIButton!
    @IBAction func addtwo(_ sender: Any) {
        if toggle {
            step_two.setTitle("step=2", for: .normal)
            step = 2
        } else {
            step_two.setTitle("step=1", for: .normal)
            step = 1
        }
        toggle = !toggle
    }
}
