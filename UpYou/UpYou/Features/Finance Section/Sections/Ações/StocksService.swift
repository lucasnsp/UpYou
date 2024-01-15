//
//  StocksService.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 16/10/23.
//

import Foundation

class StocksService {
    
    func getStockService(completion: @escaping (Result<[Stock], NetworkError>) -> Void) {
        let urlString: String = "https://run.mocky.io/v3/7d11b8c3-7a99-49f9-b8ee-ad7415477b59"
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
