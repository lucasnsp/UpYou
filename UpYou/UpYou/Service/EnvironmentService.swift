//
//  EnvironmentService.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 30/09/23.
//

import UIKit

class EnvironmentService: NSObject {
    
    func getEnvironmentService(completion: @escaping (EnvironmentData?, Error?) -> Void) {
        let urlString: String = "https://run.mocky.io/v3/9369c0cd-76df-4f21-8620-d6f40865a9a7"
        
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
                    let environmentData: EnvironmentData = try JSONDecoder().decode(EnvironmentData.self, from: dataResult)
                    print("SUCCESS -> \(#function)")
                    completion(environmentData, nil)
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
