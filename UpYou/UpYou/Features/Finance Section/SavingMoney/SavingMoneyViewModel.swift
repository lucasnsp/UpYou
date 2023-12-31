//
//  SavingMoneyViewModel.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 27/09/23.
//

import UIKit

protocol SavingMoneyViewModelDelegate: AnyObject {
    func success()
    func error()
}

class SavingMoneyViewModel {
    
    struct Constants {
        static let height: CGFloat = 170
    }
    
    private var service: MoneyPhrasesService = MoneyPhrasesService()
    private var phrase = [Phrase]()
    
    private weak var delegate: SavingMoneyViewModelDelegate?
    
    public func delegate(delegate: SavingMoneyViewModelDelegate?) {
        self.delegate = delegate
    }
    
    public var getMoneyQuotes: [Phrase] {
        phrase
    }
    
    public func loadCurrentMoneyPhrases(indexPath: IndexPath) -> Phrase {
        phrase[indexPath.row]
    }
    
    public var numberOfRowsInSection: Int {
        1
    }
    
    public var heightForRowAt: CGFloat {
        return Constants.height
    }
    
    public func fetchAllResquest() {
        service.getMoneyPhrasesService { [ weak self ] moneyPhrasesData, error in
            guard let self else { return }
            if error == nil {
                if let phrases = moneyPhrasesData?.phrases {
                    self.phrase = [phrases.randomElement()!]
                    self.delegate?.success()
                } else {
                    self.delegate?.error()
                }
            } else {
                self.delegate?.error()
            }
        }
    }
}
