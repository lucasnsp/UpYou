//
//  LcaViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 11/10/23.
//

import UIKit

protocol LcaViewModelDelegate: AnyObject {
    func success()
    func error()
}

class LcaViewModel {
    
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
        return 1000
    }
    
    public func loadCurrentFocus(indexPath: IndexPath) -> Lca {
        lca[indexPath.row]
    }
    
    public func fetchAllRequest() {
        service.getLcaService { lcaData, error in
            if error == nil {
                self.lca = lcaData?.lca ?? []
                self.delegate?.success()
            } else {
                self.delegate?.error()
            }
        }
    }

}
