//
//  DeepWorkService.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 30/09/23.
//

import UIKit

class DeepWorkService: NSObject {
    
    func getDeepWorkService(completion: @escaping (DeepWorkData?, Error?) -> Void) {
        let urlString: String = "https://run.mocky.io/v3/8a190e27-2afc-41f0-b79d-b328a8730b23"
        
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
                    let deepWorkData: DeepWorkData = try JSONDecoder().decode(DeepWorkData.self, from: dataResult)
                    print("SUCCESS -> \(#function)")
                    completion(deepWorkData, nil)
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
