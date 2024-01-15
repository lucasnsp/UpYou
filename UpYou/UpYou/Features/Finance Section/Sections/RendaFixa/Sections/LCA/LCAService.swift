//
//  LCAService.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 11/10/23.
//

import Foundation

class LCAService {
    
    func getLcaService(completion: @escaping (Result<[Lca], NetworkError>) -> Void) {
        let urlString: String = "ced18438-83c2-4dbc-a87d-f0026c13b762"
        let endpoint = Endpoint(url: urlString)

        ServiceManager.shared.request(with: endpoint, decodeType: LcaDATA.self) { result in
            switch result {
            case .success(let success):
                completion(.success(success.lca ?? []))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }
}
