//
//  TesouroDiretoViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 12/10/23.
//

import Foundation

protocol TesouroDiretoViewModelDelegate: AnyObject {
    func success()
    func error(message: String)
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
        service.getTesouroDiretoService { [weak self] result in
            guard let self else { return }
            switch result {
            case .success(let success):
                td = success
                delegate?.success()
            case .failure(let failure):
                delegate?.error(message: failure.errorDescription ?? "")
            }
        }
    }
}
