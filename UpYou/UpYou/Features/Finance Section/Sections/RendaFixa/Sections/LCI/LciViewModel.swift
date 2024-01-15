//
//  LciViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 11/10/23.
//

import Foundation

protocol LciViewModelDelegate: AnyObject {
    func success()
    func error(message: String)
}

class LciViewModel {
    
    struct Constants {
        static let height: CGFloat = 1000
    }
    
    private var service: LCIService = LCIService()
    private var lci = [Lci]()
    
    private weak var delegate: LciViewModelDelegate?
    
    public func delegate(delegate: LciViewModelDelegate?) {
        self.delegate = delegate
    }

    public var getLca: [Lci] {
        lci
    }
    
    public var numberOfRowsInSection: Int {
        return lci.count
    }
    
    public var heightForRowAt: CGFloat {
        return Constants.height
    }
    
    public func loadCurrentFocus(indexPath: IndexPath) -> Lci {
        lci[indexPath.row]
    }
    
    public func fetchAllRequest() {
        service.getLciService { [weak self] result in
            guard let self else { return }
            switch result {
            case .success(let success):
                lci = success
                delegate?.success()
            case .failure(let failure):
                delegate?.error(message: failure.errorDescription ?? "")
            }
        }
    }
}
