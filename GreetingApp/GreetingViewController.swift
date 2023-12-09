//
//  GreetingViewController.swift
//  GreetingApp
//
//  Created by Goodwasp on 10.12.2023.
//

import UIKit

protocol GreetingViewProtocol: AnyObject {
    func setGreeting(to greeting: String)
}

class GreetingViewController: UIViewController {

    @IBOutlet var greetingLabel: UILabel!
    
    private var presenter: GreetingPresenterProtocol!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let person = Person(name: "Dobrynia", surname: "Osipov")
        presenter = GreetingPresenter(view: self, person: person)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        presenter.showGreeting()
    }

}

extension GreetingViewController: GreetingViewProtocol {
    func setGreeting(to greeting: String) {
        greetingLabel.text = greeting
    }
}
