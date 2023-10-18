//
//  GoldenRulesViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 09/10/23.
//

import UIKit

protocol GoldenRulesViewModelDelegate: AnyObject {
    func success()
    func error()
}

class GoldenRulesViewModel {
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
        return 2650
    }
    
    public func loadCurrentFocus(indexPath: IndexPath) -> Rule {
        rule[indexPath.row]
    }
    
    public func fetchAllRequest() {
        service.getGoldenRulesService { [ weak self ] goldenRulesData, error in
            guard let self else { return }
            if error == nil {
                self.rule = goldenRulesData?.rules ?? []
                self.delegate?.success()
            } else {
                self.delegate?.error()
            }
        }
    }
}
