//
//  TDIService.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 13/10/23.
//

import Foundation

class TDIService {
    
    func getTesouroIpcaService(completion: @escaping (Result<[TesouroIpca], NetworkError>) -> Void) {
        let urlString: String = "36443b13-c884-4c21-8e4d-879700e8d049"
        let endpoint = Endpoint(url: urlString)

        ServiceManager.shared.request(with: endpoint, decodeType: TdiData.self) { result in
            switch result {
            case .success(let success):
                completion(.success(success.tesouroIpca ?? []))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }

    }
}
