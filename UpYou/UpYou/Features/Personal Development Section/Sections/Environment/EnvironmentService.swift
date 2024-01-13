//
//  EnvironmentService.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 30/09/23.
//

import UIKit

class EnvironmentService: NSObject {
    
    func getEnvironmentService(completion: @escaping (Result<[Environment],NetworkError>) -> Void) {
        let urlString: String = "ca31da38-8fc3-4279-b65a-c74ccf5a8bc4"
        
        let endPoint = Endpoint(url: urlString)

        ServiceManager.shared.request(with: endPoint, decodeType: EnvironmentData.self) { result in
            switch result {
            case .success(let success):
                completion(.success(success.environment ?? []))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }
}
