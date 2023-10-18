//
//  TesouroSelicViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 13/10/23.
//

import UIKit

protocol TesouroSelicViewModelDelegate: AnyObject {
    func success()
    func error()
}

class TesouroSelicViewModel {
    
    struct Constants {
        static let height: CGFloat = 1000
    }
    
    private var service: TDSService = TDSService()
    private var tds = [TesouroSelic]()
    
    private weak var delegate: TesouroSelicViewModelDelegate?
    
    public func delegate(delegate: TesouroSelicViewModelDelegate?) {
        self.delegate = delegate
    }
    
    public var getTdi: [TesouroSelic] {
        tds
    }
    
    public var numberOfRowsInSection: Int {
        return tds.count
    }
    
    public var heightForRowAt: CGFloat {
        return Constants.height
    }
    
    public func loadCurrentSelic(indexPath: IndexPath) -> TesouroSelic {
        tds[indexPath.row]
    }
    
    public func fetchAllRequest() {
        service.getTesouroSelicService { [ weak self ] tdsData, error in
            guard let self else { return }
            if error == nil {
                self.tds = tdsData?.tesouroSelic ?? []
                self.delegate?.success()
            } else {
                self.delegate?.error()
            }
        }
    }
}
