//
//  EnvironmentViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 30/09/23.
//

import Foundation

protocol EnvironmentViewModelDelegate: AnyObject {
    func success()
    func error(message: String)
}

class EnvironmentViewModel {
    
    struct Constants {
        static let height: CGFloat = 2750
    }
    
    private var service: EnvironmentService = EnvironmentService()
    private var environment = [Environment]()
    
    private weak var delegate: EnvironmentViewModelDelegate?
    
    public func delegate(delegate: EnvironmentViewModelDelegate?) {
        self.delegate = delegate
    }
    
    public var getFocus: [Environment] {
        environment
    }
    
    public var numberOfRowsInSection: Int {
        return environment.count
    }
    
    public var heightForRowAt: CGFloat {
        return Constants.height
    }
    
    public func loadCurrentEnvironment(indexPath: IndexPath) -> Environment {
        environment[indexPath.row]
    }
    
    public func fetchAllRequest() {
        service.getEnvironmentService { [weak self ] result in
            guard let self else { return }
            switch result {
            case .success(let success):
                environment = success
                delegate?.success()
            case .failure(let failure):
                delegate?.error(message: failure.errorDescription ?? "")
            }
        }
    }
}
