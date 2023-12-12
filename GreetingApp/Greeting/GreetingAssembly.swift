//
//  GreetingAssembly.swift
//  GreetingApp
//
//  Created by Goodwasp on 12.12.2023.
//

import Foundation

protocol GreetingAssemblyInputProtocol{
    func configure(with view: GreetingViewController)
}

class GreetingAssembly: GreetingAssemblyInputProtocol {
    
    // MARK: - Methods
    func configure(with view: GreetingViewController) {
        let presenter = GreetingPresenter(view: view)
        view.presenter = presenter
        let interactor = GreetingInteractor(presenter: presenter)
        presenter.interactor = interactor
    }
}
