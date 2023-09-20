//
//  HomeViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 20/09/23.
//

import UIKit

class HomeViewModel {
    
    
    // MARK: - BalanceCollectionViewCell
    public var numberOfItemsInSection: Int {
        return 1
    }
    
    public func sizeForItem(indexPath: IndexPath, frame: CGRect) -> CGSize {
        return CGSize(width: frame.width, height: frame.height)
    }
        
}

