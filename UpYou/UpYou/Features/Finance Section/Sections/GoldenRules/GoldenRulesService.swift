//
//  GoldenRulesService.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 09/10/23.
//

import Foundation

class GoldenRulesService {
    
    func getGoldenRulesService(completion: @escaping (Result<[Rule], NetworkError>) -> Void) {
        let urlString: String = "0e81f014-ee7c-45c6-b3b0-de7e25db19b9"
        let endpoint = Endpoint(url: urlString)

        ServiceManager.shared.request(with: endpoint, decodeType: GoldenRulesData.self) { result in
            switch result {
            case .success(let success):
                completion(.success(success.rules ?? []))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }
}
