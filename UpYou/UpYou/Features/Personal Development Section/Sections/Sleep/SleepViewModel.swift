//
//  SleepViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 06/10/23.
//

import UIKit

protocol SleepViewModelDelegate: AnyObject {
    func success()
    func error()
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
        service.getSleepService { [ weak self ] sleepData, error in
            guard let self else { return }
            if error == nil {
                self.sleep = sleepData?.sleep ?? []
                self.delegate?.success()
            } else {
                self.delegate?.error()
            }
        }
    }
}
