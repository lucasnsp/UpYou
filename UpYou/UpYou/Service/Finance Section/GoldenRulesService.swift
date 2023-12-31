//
//  GoldenRulesService.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 09/10/23.
//

import UIKit

class GoldenRulesService {
    
    func getGoldenRulesService(completion: @escaping (GoldenRulesData?, Error?) -> Void) {
        let urlString: String = "https://run.mocky.io/v3/0e81f014-ee7c-45c6-b3b0-de7e25db19b9"
        
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
                    let goldenRulesData: GoldenRulesData = try JSONDecoder().decode(GoldenRulesData.self, from: dataResult)
                    print("SUCCESS -> \(#function)")
                    completion(goldenRulesData, nil)
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
