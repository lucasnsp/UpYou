//
//  PersonalDevelopmentViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 25/09/23.
//

import UIKit

protocol PersonalDevelopmentViewModelDelegate: AnyObject {
    func success()
    func error(message: String)
}

class PersonalDevelopmentViewModel {
    
    struct Constants {
        static let height: CGFloat = 170
    }
    
    private var service: QuotesService = QuotesService()
    private var quote = [Quote]()
    
    
    private weak var delegate: PersonalDevelopmentViewModelDelegate?
    
    public func delegate(delegate: PersonalDevelopmentViewModelDelegate?) {
        self.delegate = delegate
    }
    
    public var getQuotes: [Quote] {
        quote
    }
    
    public func loadCurrentQuotes(indexPath: IndexPath) -> Quote {
        return quote[indexPath.row]
    }
    
    public var numberOfRowsInSection: Int {
        1
    }
    
    public var heightForRowAt: CGFloat {
        return Constants.height
    }
    
    public func fetchAllRequest() {
        service.getQuoteService { [weak self] result in
            guard let self else { return }
            switch result {
            case .success(let success):
                quote = success
                delegate?.success()
            case .failure(let failure):
                delegate?.error(message: failure.errorDescription ?? "")
            }
        }
    }
}
