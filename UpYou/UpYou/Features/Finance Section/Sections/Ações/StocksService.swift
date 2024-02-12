//
//  StocksService.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 12/02/24.
//

import Foundation

class StocksService {
    func getStocksService(completion: @escaping (Result<[Stock], NetworkError>) -> Void) {
        let urlString: String = "188cfbed-878a-4599-9628-d5a3b9b8b814"
        let endpoint = Endpoint(url: urlString)

        ServiceManager.shared.request(with: endpoint, decodeType: StocksData.self) { result in
            switch result {
            case .success(let success):
                completion(.success(success.stocks ?? []))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }
}
