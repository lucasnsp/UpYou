//
//  LciViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 11/10/23.
//

import UIKit

protocol LciViewModelDelegate: AnyObject {
    func success()
    func error()
}

class LciViewModel {
    
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
        return 1000
    }
    
    public func loadCurrentFocus(indexPath: IndexPath) -> Lci {
        lci[indexPath.row]
    }
    
    public func fetchAllRequest() {
        service.getLciService { [ weak self ] lciData, error in
            guard let self else { return }
            if error == nil {
                self.lci = lciData?.lci ?? []
                self.delegate?.success()
            } else {
                self.delegate?.error()
            }
        }
    }
}
