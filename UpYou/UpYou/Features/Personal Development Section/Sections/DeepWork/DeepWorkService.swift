//
//  DeepWorkService.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 30/09/23.
//

import Foundation

class DeepWorkService: NSObject {
    
    func getDeepWorkService(completion: @escaping (Result<[Focus], NetworkError>) -> Void) {
        let urlString: String = "8586546f-e86c-442e-a998-548bf4813c66"
        let endpoint = Endpoint(url: urlString)

        ServiceManager.shared.request(with: endpoint, decodeType: DeepWorkData.self) { result in
            switch result {
            case .success(let success):
                completion(.success(success.focus ?? []))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }
}
