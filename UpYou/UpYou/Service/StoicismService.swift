//
//  StoicismService.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 06/10/23.
//

import UIKit

class StoicismService {
    
    func getStoicismService(completion: @escaping (StoicismData?, Error?) -> Void) {
        let urlString: String = "https://run.mocky.io/v3/8f79b52b-02b7-4400-b313-885a98c88a20"
        
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
                    let stoicismData: StoicismData = try JSONDecoder().decode(StoicismData.self, from: dataResult)
                    print("SUCCESS -> \(#function)")
                    completion(stoicismData, nil)
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
