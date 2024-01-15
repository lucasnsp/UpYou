//
//  SleepService.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 07/10/23.
//

import Foundation

class SleepService {
    
    func getSleepService(completion: @escaping (Result<[Sleep], NetworkError>) -> Void) {
        let urlString: String = "dabb876c-5859-489a-8195-2afbc6150ad7"
        let endpoint = Endpoint(url: urlString)

        ServiceManager.shared.request(with: endpoint, decodeType: SleepData.self) { result in
            switch result {
            case .success(let success):
                completion(.success(success.sleep ?? []))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }

    }
}
