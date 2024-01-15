//
//  StoicismService.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 06/10/23.
//

import Foundation

class StoicismService {
    
    func getStoicismService(completion: @escaping (Result<[Stoicism],NetworkError>) -> Void) {
        let urlString: String = "8f79b52b-02b7-4400-b313-885a98c88a20"

        let endPoint = Endpoint(url: urlString)

        ServiceManager.shared.request(with: endPoint, decodeType: StoicismData.self) { result in
            switch result {
            case .success(let success):
                completion(.success(success.stoicism ?? []))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }
}
