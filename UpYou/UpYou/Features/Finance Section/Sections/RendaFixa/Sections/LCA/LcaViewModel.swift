//
//  LcaViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 11/10/23.
//

import Foundation

protocol LcaViewModelDelegate: AnyObject {
    func success()
    func error(message: String)
}

class LcaViewModel {
    
    struct Constants {
        static let height: CGFloat = 1000
    }
    
    private var service: LCAService = LCAService()
    private var lca = [Lca]()
    
    private weak var delegate: LcaViewModelDelegate?
    
    public func delegate(delegate: LcaViewModelDelegate?) {
        self.delegate = delegate
    }

    public var getLca: [Lca] {
        lca
    }
    
    public var numberOfRowsInSection: Int {
        return lca.count
    }
    
    public var heightForRowAt: CGFloat {
        return Constants.height
    }
    
    public func loadCurrentFocus(indexPath: IndexPath) -> Lca {
        lca[indexPath.row]
    }
    
    public func fetchAllRequest() {
        service.getLcaService { [weak self] result in
            guard let self else { return }
            switch result {
            case .success(let success):
                lca = success
                delegate?.success()
            case .failure(let failure):
                delegate?.error(message: failure.errorDescription ?? "")
            }
        }
    }

}
