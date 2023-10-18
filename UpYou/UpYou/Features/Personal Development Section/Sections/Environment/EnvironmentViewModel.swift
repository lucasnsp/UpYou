//
//  EnvironmentViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 30/09/23.
//

import UIKit

protocol EnvironmentViewModelDelegate: AnyObject {
    func success()
    func error()
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
        service.getEnvironmentService { [ weak self ] environmentData, error in
            guard let self else { return }
            if error == nil {
                self.environment = environmentData?.environment ?? []
                self.delegate?.success()
            } else {
                self.delegate?.error()
            }
        }
    }
}
