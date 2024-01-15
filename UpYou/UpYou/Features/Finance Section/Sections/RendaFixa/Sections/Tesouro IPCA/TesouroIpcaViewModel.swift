//
//  TesouroIpcaViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 13/10/23.
//

import Foundation

protocol TesouroIpcaViewModelDelegate: AnyObject{
    func success()
    func error()
}

class TesouroIpcaViewModel {
    
    struct Constants {
        static let height: CGFloat = 1000
    }
    
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
        return Constants.height
    }
    
    public func loadCurrentIpca(indexPath: IndexPath) -> TesouroIpca {
        tdi[indexPath.row]
    }
    
    public func fetchAllRequest() {
        service.getTesouroIpcaService { [ weak self ] tdiData, error in
            guard let self else { return }
            if error == nil {
                self.tdi = tdiData?.tesouroIpca ?? []
                self.delegate?.success()
            } else {
                self.delegate?.error()
            }
        }
    }
}
