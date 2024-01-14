//
//  StoicismViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 05/10/23.
//

import UIKit

protocol StoicismViewModelDelegate: AnyObject {
    func success()
    func error(message: String)
}

class StoicismViewModel {
    
    struct Constants {
        static let height: CGFloat = 2800
    }
    
    private var service = StoicismService()
    private var stoic = [Stoicism]()
    
    public var getHabits: [Stoicism] {
        stoic
    }
    
    private weak var delegate: StoicismViewModelDelegate?
    
    public func delegate(delegate: StoicismViewModelDelegate?) {
        self.delegate = delegate
    }

    
    public var numberOfRowsInSection: Int {
        return stoic.count
    }
    
    public var heightForRowAt: CGFloat {
        return Constants.height
    }
    
    public func loadCurrentStoic(indexPath: IndexPath) -> Stoicism {
        stoic[indexPath.row]
    }
    
    public func fetchAllRequest() {
        service.getStoicismService { [weak self] result in
            guard let self else { return }
            switch result {
            case .success(let success):
                stoic = success
                delegate?.success()
            case .failure(let failure):
                delegate?.error(message: failure.errorDescription ?? "")
            }
        }
    }
}
