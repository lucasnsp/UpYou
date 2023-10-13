//
//  TDSService.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 13/10/23.
//

import UIKit

class TDSService: NSObject {
    
    func getTesouroSelicService(completion: @escaping (TdsData?, Error?) -> Void) {
        let urlString: String = "https://run.mocky.io/v3/c61d1cb3-e88e-44a5-992c-2564ef8daaad"
        
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
                    let tdsData: TdsData = try JSONDecoder().decode(TdsData.self, from: dataResult)
                    print("SUCCESS -> \(#function)")
                    completion(tdsData, nil)
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
