//
//  FiisViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 14/10/23.
//

import Foundation

protocol FiisViewModelDelegate: AnyObject {
    func success()
    func error(message: String)
}

class FiisViewModel {
    
    struct Constants {
        static let height: CGFloat = 1080
    }
    
    private var service: FIIsService = FIIsService()
    private var fiis = [FundosImobiliario]()
    
    private weak var delegate: FiisViewModelDelegate?
    
    public func delegate(delegate: FiisViewModelDelegate?) {
        self.delegate = delegate
    }

    public var getFiis: [FundosImobiliario] {
        fiis
    }
    
    public var numberOfRowsInSection: Int {
        return fiis.count
    }
    
    public var heightForRowAt: CGFloat {
        return Constants.height
    }
    
    public func loadCurrentFiis(indexPath: IndexPath) -> FundosImobiliario {
        fiis[indexPath.row]
    }
    
    public func fetchAllRequest() {
        service.getFiisService { [weak self] result in
            guard let self else { return }
            switch result {
            case .success(let success):
                fiis = success
                delegate?.success()
            case .failure(let failure):
                delegate?.error(message: failure.errorDescription ?? "")
            }
        }
    }
}
