//
//  StocksViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 14/10/23.
//

import Foundation

protocol StocksViewModelDelegate: AnyObject {
    func success()
    func error(message: String)
}

class StocksViewModel {
    
    struct Constants {
        static let height: CGFloat = 950
    }
    
    private var service: StocksService = StocksService()
    private var stock = [Stock]()
    
    private weak var delegate: StocksViewModelDelegate?
    
    public func delegate(delegate: StocksViewModelDelegate?) {
        self.delegate = delegate
    }
    
    public var getStocks: [Stock] {
        stock
    }
    
    public var numberOfRowsInSection: Int {
        return stock.count
    }
    
    public var heightForRowAt: CGFloat {
        return Constants.height
    }
    
    public func loadCurrentStocks(indexPath: IndexPath) -> Stock {
        stock[indexPath.row]
    }
    
    public func fetchAllRequest() {
        service.getStockService { [weak self] result in
            guard let self else { return }
            switch result {
            case .success(let success):
                stock = success
                delegate?.success()
            case .failure(let failure):
                delegate?.error(message: failure.errorDescription ?? "")
            }
        }
    }
}
