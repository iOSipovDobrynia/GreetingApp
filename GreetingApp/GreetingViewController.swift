//
//  GreetingViewController.swift
//  GreetingApp
//
//  Created by Goodwasp on 10.12.2023.
//

import UIKit

class GreetingViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    private var viewModel: GreetingViewModelProtocol! {
        didSet {
            viewModel.greetingDidChange = { [unowned self] viewModel in
                greetingLabel.text = viewModel.greeting
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let person = Person(name: "Foo", surname: "Bar")
        viewModel = GreetingViewModel(person: person)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        viewModel.showGreeting()
    }

}

