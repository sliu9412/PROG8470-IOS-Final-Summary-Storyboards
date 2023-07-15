//
//  ViewController.swift
//  lab3
//
//  Created by JYJ on 2023/1/24.
//  Copyright © 2023 siuyuliu. All rights reserved.
//

import UIKit

class Lab3ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet var firstNameInput: UITextField!

    @IBOutlet var lastNameInput: UITextField!

    @IBOutlet var countryInput: UITextField!

    @IBOutlet var ageInput: UITextField!

    @IBOutlet var SummaryText: UITextView!

    @IBOutlet var submitText: UITextView!

    @IBAction func addButton(_ sender: Any) {
        let firstName = firstNameInput.text!
        let lastName = lastNameInput.text!
        let country = countryInput.text!
        let age = ageInput.text!
        SummaryText.text = "Full Name: \(firstName) \(lastName)\nCountry: \(country)\nAge: \(age)"
    }

    @IBAction func resetButton(_ sender: Any) {
        firstNameInput.text = ""
        lastNameInput.text = ""
        countryInput.text = ""
        ageInput.text = ""
        SummaryText.text = ""
        submitText.text = ""
    }

    @IBAction func submitButton(_ sender: Any) {
        let firstName = firstNameInput.text!
        let lastName = lastNameInput.text!
        let country = countryInput.text!
        let age = ageInput.text!
        if !firstName.isEmpty && !lastName.isEmpty
            && !country.isEmpty && !age.isEmpty {
            submitText.text = "Successfully submitted!"
        } else {
            submitText.text = "Complete the missing Info!"
        }
    }
}
