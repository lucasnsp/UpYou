//
//  StocksViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 14/10/23.
//

import UIKit

protocol StocksViewModelDelegate: AnyObject {
    func success()
    func error()
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
        service.getStockService { [ weak self ] stockData, error in
            guard let self else { return }
            if error == nil {
                self.stock = stockData?.stocks ?? []
                self.delegate?.success()
            } else {
                self.delegate?.error()
            }
        }
    }
}
