//
//  LCIService.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 11/10/23.
//

import Foundation

class LCIService {
    
    func getLciService(completion: @escaping (LciDATA?, Error?) -> Void) {
        let urlString: String = "https://run.mocky.io/v3/5a38b086-0029-449b-bb3e-a59bb65791cb"
        
        guard let url: URL = URL(string: urlString) else { return completion(nil, ErrorDetail.errorURL(urlString: urlString))}
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            
            guard let dataResult = data else { return completion(nil, ErrorDetail.detailError(detail: "Error Data"))}
            
            let json = try? JSONSerialization.jsonObject(with: dataResult, options: [])
            print(json as Any)
            
            guard let response = response as? HTTPURLResponse else { return }
            
            if response.statusCode == 200 {
                do {
                    let lciData: LciDATA = try JSONDecoder().decode(LciDATA.self, from: dataResult)
                    print("SUCCESS -> \(#function)")
                    completion(lciData, nil)
                } catch  {
                    print("ERROR -> \(#function)")
                    completion(nil, error)
                }
            } else {
                print("ERROR -> \(#function)")
                completion(nil, error)
            }
        }
        task.resume()
    }
}
