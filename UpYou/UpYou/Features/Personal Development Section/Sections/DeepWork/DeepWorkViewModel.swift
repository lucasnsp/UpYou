//
//  DeepWorkViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 30/09/23.
//

import UIKit

protocol DeepWorkViewModelDelegate: AnyObject {
    func success()
    func error()
}

class DeepWorkViewModel {
    
    private var service: DeepWorkService = DeepWorkService()
    private var focus = [Focus]()
    
    private weak var delegate: DeepWorkViewModelDelegate?
    
    public func delegate(delegate: DeepWorkViewModelDelegate?) {
        self.delegate = delegate
    }
    
    public var getFocus: [Focus] {
        focus
    }
    
    public var numberOfRowsInSection: Int {
        return focus.count
    }
    
    public var heightForRowAt: CGFloat {
        return 2280
    }
    
    public func loadCurrentFocus(indexPath: IndexPath) -> Focus {
        focus[indexPath.row]
    }
    
    public func fetchAllRequest() {
        service.getDeepWorkService { deepWorkData, error in
            if error == nil {
                self.focus = deepWorkData?.focus ?? []
                self.delegate?.success()
            } else {
                self.delegate?.error()
            }
        }
    }
}
