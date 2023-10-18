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
    
    struct Constants {
        static let height: CGFloat = 1000
    }
    
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
        return Constants.height
    }
    
    public func loadCurrentDireto(indexPath: IndexPath) -> TesouroDireto {
        td[indexPath.row]
    }
    
    public func fetchAllRequest() {
        service.getTesouroDiretoService { [ weak self ] tdData, error in
            guard let self else { return }
            if error == nil {
                self.td = tdData?.tesouroDireto ?? []
                self.delegate?.success()
            } else {
                self.delegate?.error()
            }
        }
    }
}
