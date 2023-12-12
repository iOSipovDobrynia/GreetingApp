//
//  GreetingViewController.swift
//  GreetingApp
//
//  Created by Goodwasp on 10.12.2023.
//

import UIKit

protocol GreetingViewInputProtocol: AnyObject {
    func setGreeting(_ greeting: String)
}

protocol GreetingViewOutputProtocol {
    init(view: GreetingViewInputProtocol)
    func didTapShowGreeting()
}

class GreetingViewController: UIViewController {

    // MARK: - IBOutlets
    @IBOutlet var greetingLabel: UILabel!
    
    // MARK: - Public properties
    var presenter: GreetingViewOutputProtocol!
    
    // MARK: - Private properties
    private let assembly: GreetingAssemblyInputProtocol = GreetingAssembly()
    
    // MARK: - View's lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        assembly.configure(with: self)
    }
    
    // MARK: - Override methods
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        presenter.didTapShowGreeting()
    }

}

// MARK: - GreetingViewInputProtocol
extension GreetingViewController: GreetingViewInputProtocol {
    func setGreeting(_ greeting: String) {
        greetingLabel.text = greeting
    }
}
