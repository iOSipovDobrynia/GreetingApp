//
//  GreetingInteractor.swift
//  GreetingApp
//
//  Created by Goodwasp on 12.12.2023.
//

import Foundation

protocol GreetingInteractorInputProtocol {
    init(presenter: GreetingInteractorOutputProtocol)
    func provideGreetingData()
}

protocol GreetingInteractorOutputProtocol: AnyObject {
    func receiveGreetingData(greetingData: GreetingData)
}

class GreetingInteractor: GreetingInteractorInputProtocol {
    
    // MARK: - Private properties
    unowned private let presenter: GreetingInteractorOutputProtocol
    
    // MARK: - Initialization
    required init(presenter: GreetingInteractorOutputProtocol) {
        self.presenter = presenter
    }
    
    // MARK: - Methods
    func provideGreetingData() {
        let person = Person(name: "Dobry", surname: "Osip")
        let greetingData = GreetingData(name: person.name, surname: person.surname)
        presenter.receiveGreetingData(greetingData: greetingData)
    }
}
