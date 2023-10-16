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
        return 950
    }
    
    public func loadCurrentStocks(indexPath: IndexPath) -> Stock {
        stock[indexPath.row]
    }
    
    public func fetchAllRequest() {
        service.getStockService { stockData, error in
            if error == nil {
                self.stock = stockData?.stocks ?? []
                self.delegate?.success()
            } else {
                self.delegate?.error()
            }
        }
    }
}
