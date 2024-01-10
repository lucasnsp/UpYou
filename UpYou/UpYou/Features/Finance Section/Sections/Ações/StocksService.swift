//
//  StocksService.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 16/10/23.
//

import UIKit

class StocksService {
    
    func getStockService(completion: @escaping (StocksData?, Error?) -> Void) {
        let urlString: String = "https://run.mocky.io/v3/7d11b8c3-7a99-49f9-b8ee-ad7415477b59"
        
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
                    let stockData: StocksData = try JSONDecoder().decode(StocksData.self, from: dataResult)
                    print("SUCCESS -> \(#function)")
                    completion(stockData, nil)
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
