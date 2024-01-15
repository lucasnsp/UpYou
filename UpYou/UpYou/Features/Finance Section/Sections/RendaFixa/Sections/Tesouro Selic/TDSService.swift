//
//  TDSService.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 13/10/23.
//

import Foundation

class TDSService: NSObject {
    
    func getTesouroSelicService(completion: @escaping (Result<[TesouroSelic], NetworkError>) -> Void) {
        let urlString: String = "c61d1cb3-e88e-44a5-992c-2564ef8daaad"
        let endpoint = Endpoint(url: urlString)

        ServiceManager.shared.request(with: endpoint, decodeType: TdsData.self) { result in
            switch result {
            case .success(let success):
                completion(.success(success.tesouroSelic ?? []))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }

    }

}
