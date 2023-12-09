//
//  GreetingViewController.swift
//  GreetingApp
//
//  Created by Goodwasp on 10.12.2023.
//

import UIKit

class GreetingViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    private var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        person = Person(name: "Dob", surname: "Os")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        greetingLabel.text = "Hello, \(person.name) \(person.surname)"
    }

}

