//
//  MoneyQuoteService.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 27/09/23.
//

import Foundation

class MoneyPhrasesService {
    
    func getMoneyPhrasesService(completion: @escaping (Result<[Phrase], NetworkError>) -> Void) {
        let urlString: String = "e2a47013-a2b0-456e-bab1-bbcf6342ffd5"
        let endpoint = Endpoint(url: urlString)

        ServiceManager.shared.request(with: endpoint, decodeType: MoneyPhrasesData.self) { result in
            switch result {
            case .success(let success):
                completion(.success(success.phrases ?? []))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }
}
