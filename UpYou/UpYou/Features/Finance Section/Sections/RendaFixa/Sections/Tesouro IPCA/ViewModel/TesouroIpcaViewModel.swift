//
//  TesouroIpcaViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 13/10/23.
//

import UIKit

protocol TesouroIpcaViewModelDelegate: AnyObject{
    func success()
    func error()
}

class TesouroIpcaViewModel {
    
    private var service: TDIService = TDIService()
    private var tdi = [TesouroIpca]()
    
    private weak var delegate: TesouroIpcaViewModelDelegate?
    
    public func delegate(delegate: TesouroIpcaViewModelDelegate?) {
        self.delegate = delegate
    }
    
    public var getTdi: [TesouroIpca] {
        tdi
    }
    
    public var numberOfRowsInSection: Int {
        return tdi.count
    }
    
    public var heightForRowAt: CGFloat {
        return 1000
    }
    
    public func loadCurrentIpca(indexPath: IndexPath) -> TesouroIpca {
        tdi[indexPath.row]
    }
    
    public func fetchAllRequest() {
        service.getTesouroIpcaService { tdiData, error in
            if error == nil {
                self.tdi = tdiData?.tesouroIpca ?? []
                self.delegate?.success()
            } else {
                self.delegate?.error()
            }
        }
    }
}