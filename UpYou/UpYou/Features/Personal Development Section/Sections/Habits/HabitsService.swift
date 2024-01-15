//
//  HabitsService.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 03/10/23.
//

import Foundation

class HabitsService {
    
    func getHabitsService(completion: @escaping (Result<[Habit],NetworkError>) -> Void) {
        let urlString: String = "0af28733-74e0-4d4f-aec9-7efb369212ba"
        
        let endpoint = Endpoint(url: urlString)

        ServiceManager.shared.request(with: endpoint, decodeType: HabitsData.self) { result in
            switch result {
            case .success(let success):
                completion(.success(success.habits ?? []))
            case .failure(let failure):
                completion(.failure(failure))
            }
        }
    }
}
