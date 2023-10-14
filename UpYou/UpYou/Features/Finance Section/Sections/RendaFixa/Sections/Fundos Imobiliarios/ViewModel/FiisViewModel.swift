//
//  FiisViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 14/10/23.
//

import UIKit

protocol FiisViewModelDelegate: AnyObject {
    func success()
    func error()
}

class FiisViewModel {
    
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
        return 1080
    }
    
    public func loadCurrentFiis(indexPath: IndexPath) -> FundosImobiliario {
        fiis[indexPath.row]
    }
    
    public func fetchAllRequest() {
        service.getFiisService { fiisData, error in
            if error == nil {
                self.fiis = fiisData?.fundosImobiliarios ?? []
                self.delegate?.success()
            } else {
                self.delegate?.error()
            }
        }
    }
}
