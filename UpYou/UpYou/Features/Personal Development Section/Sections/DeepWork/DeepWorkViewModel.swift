//
//  DeepWorkViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 30/09/23.
//

import UIKit

protocol DeepWorkViewModelDelegate: AnyObject {
    func success()
    func error(message: String)
}

class DeepWorkViewModel {
    
    struct Constants {
        static let height: CGFloat = 2280
    }
    
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
        return Constants.height
    }
    
    public func loadCurrentFocus(indexPath: IndexPath) -> Focus {
        focus[indexPath.row]
    }
    
    public func fetchAllRequest() {
        service.getDeepWorkService { [weak self] result in
            guard let self else { return }
            switch result {
            case .success(let success):
                focus = success
                delegate?.success()
            case .failure(let failure):
                delegate?.error(message: failure.errorDescription ?? "")
            }
        }
    }
}
