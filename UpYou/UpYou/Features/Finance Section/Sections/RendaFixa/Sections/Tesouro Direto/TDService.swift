//
//  TDService.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 12/10/23.
//

import Foundation

class TDService {
    
    func getTesouroDiretoService(completion: @escaping (Result<[TesouroDireto], NetworkError>) -> Void) {
        let urlString: String = "234d1980-6295-4943-9b48-3c2887414cf5"
        let endpoint = Endpoint(url: urlString)

        ServiceManager.shared.request(with: endpoint, decodeType: TdData.self) { result in
            switch result {
            case .success(let success):
                completion(.success(success.tesouroDireto ?? []))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }

    }
}
