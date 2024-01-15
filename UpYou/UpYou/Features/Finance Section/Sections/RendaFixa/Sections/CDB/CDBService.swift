//
//  CDBService.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 11/10/23.
//

import Foundation

class CDBService {
    
    func getCdbService(completion: @escaping (Result<[Cdb], NetworkError>) -> Void) {
        let urlString: String = "30b2d75c-8e75-46e1-b4d9-5dea212443bd"
        let endpoint = Endpoint(url: urlString)

        ServiceManager.shared.request(with: endpoint, decodeType: CdbDATA.self) { result in
            switch result {
            case .success(let success):
                completion(.success(success.cdb ?? []))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }

    }
}
