//
//  GreetingPresenter.swift
//  GreetingApp
//
//  Created by Goodwasp on 12.12.2023.
//

import Foundation

struct GreetingData {
    let name: String
    let surname: String
}

class GreetingPresenter: GreetingViewOutputProtocol {
    
    // MARK: - Private properties
    unowned private let view: GreetingViewInputProtocol
    
    // MARK: - Public properties
    var interactor: GreetingInteractorInputProtocol!
    
    // MARK: - Initialization
    required init(view: GreetingViewInputProtocol) {
        self.view = view
    }
    
    // MARK: - Methods
    func didTapShowGreeting() {
        interactor.provideGreetingData()
    }
}

// MARK: - GreetingInteractorOutputProtocol
extension GreetingPresenter: GreetingInteractorOutputProtocol {
    func receiveGreetingData(greetingData: GreetingData) {
        let greeting = "Hello, \(greetingData.name) and \(greetingData.surname)"
        view.setGreeting(greeting)
    }
}
