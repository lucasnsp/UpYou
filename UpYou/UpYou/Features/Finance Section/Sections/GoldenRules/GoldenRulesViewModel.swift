//
//  GoldenRulesViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 09/10/23.
//

import Foundation

protocol GoldenRulesViewModelDelegate: AnyObject {
    func success()
    func error(message: String)
}

class GoldenRulesViewModel {
    
    struct Constants {
        static let height: CGFloat = 2650
    }
    
    private var service: GoldenRulesService = GoldenRulesService()
    private var rule = [Rule]()
    
    private weak var delegate: GoldenRulesViewModelDelegate?
    
    public func delegate(delegate: GoldenRulesViewModelDelegate?) {
        self.delegate = delegate
    }

    public var getRules: [Rule] {
        rule
    }
    
    public var numberOfRowsInSection: Int {
        return rule.count
    }
    
    public var heightForRowAt: CGFloat {
        return Constants.height
    }
    
    public func loadCurrentFocus(indexPath: IndexPath) -> Rule {
        rule[indexPath.row]
    }
    
    public func fetchAllRequest() {
        service.getGoldenRulesService { [weak self] result in
            guard let self else { return }
            switch result {
            case .success(let success):
                rule = success
                delegate?.success()
            case .failure(let failure):
                delegate?.error(message: failure.errorDescription ?? "")
            }
        }
    }
}
