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
        return 170
    }
    
    public func fetchAllResquest() {
        service.getMoneyPhrasesService { moneyPhrasesData, error in
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
