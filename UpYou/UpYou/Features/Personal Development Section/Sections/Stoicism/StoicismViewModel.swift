//
//  StoicismViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 05/10/23.
//

import UIKit

protocol StoicismViewModelDelegate: AnyObject {
    func success()
    func error()
}

class StoicismViewModel {
    
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
        return 2800
    }
    
    public func loadCurrentStoic(indexPath: IndexPath) -> Stoicism {
        stoic[indexPath.row]
    }
    
    public func fetchAllRequest() {
        service.getStoicismService { [ weak self ]stoicismData, error in
            guard let self else { return }
            if error == nil {
                self.stoic = stoicismData?.stoicism ?? []
                self.delegate?.success()
            } else {
                self.delegate?.error()
            }
        }
    }
}
