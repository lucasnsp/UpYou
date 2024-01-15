//
//  SleepViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 06/10/23.
//

import Foundation

protocol SleepViewModelDelegate: AnyObject {
    func success()
    func error(message: String)
}

class SleepViewModel {
    
    struct Constants {
        static let height: CGFloat = 2880
    }
    
    private var service: SleepService = SleepService()
    private var sleep = [Sleep]()
    
    private weak var delegate: SleepViewModelDelegate?
    
    public func delegate(delegate: SleepViewModelDelegate?) {
        self.delegate = delegate
    }
    
    public var getSleep: [Sleep] {
        sleep
    }
    
    public var numberOfRowsInSection: Int {
        return sleep.count
    }
    
    public var heightForRowAt: CGFloat {
        return Constants.height
    }
    
    public func loadCurrentSleep(indexPath: IndexPath) -> Sleep {
        sleep[indexPath.row]
    }
    
    public func fetchAllRequest() {
        service.getSleepService { [weak self] result in
            guard let self else { return }
            switch result {
            case .success(let success):
                sleep = success
                delegate?.success()
            case .failure(let failure):
                delegate?.error(message: failure.errorDescription ?? "")
            }
        }
    }
}
