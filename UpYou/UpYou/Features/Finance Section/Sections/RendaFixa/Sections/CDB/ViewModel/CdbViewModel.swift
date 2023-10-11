//
//  CdbViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 10/10/23.
//

import UIKit

protocol CdbViewModelDelegate: AnyObject {
    func success()
    func error()
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
        service.getCdbService { cdbData, error in
            if error == nil {
                self.cdb = cdbData?.cdb ?? []
                self.delegate?.success()
            } else {
                self.delegate?.error()
            }
        }
    }

}
