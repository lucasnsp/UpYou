//
//  CriptoService.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 14/10/23.
//

import Foundation

class CriptoService {

    func getCriptoService(completion: @escaping (Result<[CriptoMoeda], NetworkError>) -> Void) {
        let urlString: String = "188cfbed-878a-4599-9628-d5a3b9b8b814"
        let endpoint = Endpoint(url: urlString)

        ServiceManager.shared.request(with: endpoint, decodeType: CriptoData.self) { result in
            switch result {
            case .success(let success):
                completion(.success(success.criptoMoedas ?? []))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }
}
