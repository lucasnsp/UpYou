//
//  TDIService.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 13/10/23.
//

import Foundation

class TDIService {
    
    func getTesouroIpcaService(completion: @escaping (TdiData?, Error?) -> Void) {
        let urlString: String = "https://run.mocky.io/v3/36443b13-c884-4c21-8e4d-879700e8d049"
        
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
                    let tdiData: TdiData = try JSONDecoder().decode(TdiData.self, from: dataResult)
                    print("SUCCESS -> \(#function)")
                    completion(tdiData, nil)
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
