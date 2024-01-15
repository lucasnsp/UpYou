//
//  TesouroIpcaViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 13/10/23.
//

import Foundation

protocol TesouroIpcaViewModelDelegate: AnyObject{
    func success()
    func error(message: String)
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
        service.getTesouroIpcaService { [weak self] result in
            guard let self else { return }
            switch result {
            case .success(let success):
                tdi = success
                delegate?.success()
            case .failure(let failure):
                delegate?.error(message: failure.errorDescription ?? "")
            }
        }
    }
}
