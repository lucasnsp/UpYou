//
//  BooksService.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 29/09/23.
//

import UIKit

class BooksService {
    
    func getBookService(completion: @escaping (Result<[Book],NetworkError>) -> Void) {
        let urlString: String = "3ebec21f-3c82-4ffa-9a2c-80f7d7b09b04"
        let endpoint = Endpoint(url: urlString)

        ServiceManager.shared.request(with: endpoint, decodeType: BooksData.self) { result in
            switch result {
            case .success(let success):
                completion(.success(success.books ?? []))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }
}
