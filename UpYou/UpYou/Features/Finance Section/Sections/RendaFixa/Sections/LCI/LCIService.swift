//
//  LCIService.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 11/10/23.
//

import Foundation

class LCIService {
    
    func getLciService(completion: @escaping (Result<[Lci], NetworkError>) -> Void) {
        let urlString: String = "5a38b086-0029-449b-bb3e-a59bb65791cb"
        let endpoint = Endpoint(url: urlString)

        ServiceManager.shared.request(with: endpoint, decodeType: LciDATA.self) { result in
            switch result {
            case .success(let success):
                completion(.success(success.lci ?? []))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }

    }
}
