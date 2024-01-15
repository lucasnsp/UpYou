//
//  FIIsService.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 14/10/23.
//

import Foundation

class FIIsService {
    
    func getFiisService(completion: @escaping (Result<[FundosImobiliario], NetworkError>) -> Void) {
        let urlString: String = "d2f0f3c2-5379-4b01-9a7c-ee34827468d7"
        let endpoint = Endpoint(url: urlString)

        ServiceManager.shared.request(with: endpoint, decodeType: FIIsData.self) { result in
            switch result {
            case .success(let success):
                completion(.success(success.fundosImobiliarios ?? []))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }
}
