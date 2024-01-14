//
//  QuotesService.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 25/09/23.
//

import UIKit

class QuotesService {
    
    func getQuoteService(completion: @escaping (Result<[Quote],NetworkError>) -> Void) {
        let urlString: String = "a8da3a69-775e-4215-b485-bc2f9a898951"
        let endPoint = Endpoint(url: urlString)

        ServiceManager.shared.request(with: endPoint, decodeType: QuoteData.self) { result in
            switch result {
            case .success(let success):
                completion(.success(success.quotes ?? []))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }
}
