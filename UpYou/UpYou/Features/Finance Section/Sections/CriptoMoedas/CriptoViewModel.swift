//
//  CriptoViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 14/10/23.
//

import UIKit

protocol CriptoViewModelDelegate: AnyObject {
    func success()
    func error()
}

class CriptoViewModel {
    
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
        return 950
    }
    
    public func loadCurrentCripto(indexPath: IndexPath) -> CriptoMoeda {
        cripto[indexPath.row]
    }
    
    public func fetchAllRequest() {
        service.getCriptoService { [ weak self ] criptoData, error in
            guard let self else { return }
            if error == nil {
                self.cripto = criptoData?.criptoMoedas ?? []
                self.delegate?.success()
            } else {
                self.delegate?.error()
            }
        }
    }
}
