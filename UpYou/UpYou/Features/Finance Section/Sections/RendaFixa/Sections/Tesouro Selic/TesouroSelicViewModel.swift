//
//  TesouroSelicViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 13/10/23.
//

import Foundation

protocol TesouroSelicViewModelDelegate: AnyObject {
    func success()
    func error(message: String)
}

class TesouroSelicViewModel {
    
    struct Constants {
        static let height: CGFloat = 1000
    }
    
    private var service: TDSService = TDSService()
    private var tds = [TesouroSelic]()
    
    private weak var delegate: TesouroSelicViewModelDelegate?
    
    public func delegate(delegate: TesouroSelicViewModelDelegate?) {
        self.delegate = delegate
    }
    
    public var getTdi: [TesouroSelic] {
        tds
    }
    
    public var numberOfRowsInSection: Int {
        return tds.count
    }
    
    public var heightForRowAt: CGFloat {
        return Constants.height
    }
    
    public func loadCurrentSelic(indexPath: IndexPath) -> TesouroSelic {
        tds[indexPath.row]
    }
    
    public func fetchAllRequest() {
        service.getTesouroSelicService { [weak self] result in
            guard let self else { return }
            switch result {
            case .success(let success):
                tds = success
                delegate?.success()
            case .failure(let failure):
                delegate?.error(message: failure.errorDescription ?? "")
            }
        }
    }
}
