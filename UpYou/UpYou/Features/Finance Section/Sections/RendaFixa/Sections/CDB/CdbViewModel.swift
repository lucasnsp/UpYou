//
//  CdbViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 10/10/23.
//

import Foundation

protocol CdbViewModelDelegate: AnyObject {
    func success()
    func error(message: String)
}

class CdbViewModel {
    private var service: CDBService = CDBService()
    private var cdb = [Cdb]()
    
    private weak var delegate: CdbViewModelDelegate?
    
    public func delegate(delegate: CdbViewModelDelegate?) {
        self.delegate = delegate
    }
    
    public var getCdb: [Cdb] {
        cdb
    }
    
    public var numberOfRowsInSection: Int {
        return cdb.count
    }
    
    public var heightForRowAt: CGFloat {
        return 1000
    }
    
    public func loadCurrentFocus(indexPath: IndexPath) -> Cdb {
        cdb[indexPath.row]
    }
    
    public func fetchAllRequest() {
        service.getCdbService { [weak self] result in
            guard let self else { return }
            switch result {
            case .success(let success):
                cdb = success
                delegate?.success()
            case .failure(let failure):
                delegate?.error(message: failure.errorDescription ?? "")
            }
        }
    }

}
