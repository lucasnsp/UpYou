//
//  TesouroDiretoViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 12/10/23.
//

import UIKit

protocol TesouroDiretoViewModelDelegate: AnyObject {
    func success()
    func error()
}

class TesouroDiretoViewModel {
    
    private var service: TDService = TDService()
    private var td = [TesouroDireto]()
    
    private weak var delegate: TesouroDiretoViewModelDelegate?
    
    public func delegate(delegate: TesouroDiretoViewModelDelegate?) {
        self.delegate = delegate
    }
    
    public var getTd: [TesouroDireto] {
        td
    }
    
    public var numberOfRowsInSection: Int {
        return td.count
    }
    
    public var heightForRowAt: CGFloat {
        return 1000
    }
    
    public func loadCurrentFocus(indexPath: IndexPath) -> TesouroDireto {
        td[indexPath.row]
    }
    
    public func fetchAllRequest() {
        service.getTesouroDiretoService { tdData, error in
            if error == nil {
                self.td = tdData?.tesouroDireto ?? []
                self.delegate?.success()
            } else {
                self.delegate?.error()
            }
        }
    }
}
