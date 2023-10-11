//
//  CDBService.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 11/10/23.
//

import UIKit

class CDBService {
    
    func getCdbService(completion: @escaping (CdbDATA?, Error?) -> Void) {
        let urlString: String = "https://run.mocky.io/v3/30b2d75c-8e75-46e1-b4d9-5dea212443bd"
        
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
                    let cdbData: CdbDATA = try JSONDecoder().decode(CdbDATA.self, from: dataResult)
                    print("SUCCESS -> \(#function)")
                    completion(cdbData, nil)
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
