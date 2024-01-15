//
//  CriptoViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 14/10/23.
//

import Foundation

protocol CriptoViewModelDelegate: AnyObject {
    func success()
    func error(message: String)
}

class CriptoViewModel {
    
    struct Constants {
        static let height: CGFloat = 950
    }
    
    private var service: CriptoService = CriptoService()
    private var cripto = [CriptoMoeda]()
    
    private weak var delegate: CriptoViewModelDelegate?
    
    public func delegate(delegate: CriptoViewModelDelegate?) {
        self.delegate = delegate
    }
    
    public var getCripto: [CriptoMoeda] {
        cripto
    }
    
    public var numberOfRowsInSection: Int {
        return cripto.count
    }
    
    public var heightForRowAt: CGFloat {
        return Constants.height
    }
    
    public func loadCurrentCripto(indexPath: IndexPath) -> CriptoMoeda {
        cripto[indexPath.row]
    }
    
    public func fetchAllRequest() {
        service.getCriptoService { [weak self] result in
            guard let self else { return }
            switch result {
            case .success(let success):
                cripto = success
                delegate?.success()
            case .failure(let failure):
                delegate?.error(message: failure.errorDescription ?? "")
            }
        }
    }
}
