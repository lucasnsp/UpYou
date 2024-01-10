//
//  SleepService.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 07/10/23.
//

import UIKit

class SleepService {
    
    func getSleepService(completion: @escaping (SleepData?, Error?) -> Void) {
        let urlString: String = "https://run.mocky.io/v3/dabb876c-5859-489a-8195-2afbc6150ad7"
        
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
                    let sleepData: SleepData = try JSONDecoder().decode(SleepData.self, from: dataResult)
                    print("SUCCESS -> \(#function)")
                    completion(sleepData, nil)
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
