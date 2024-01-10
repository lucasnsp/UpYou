//
//  CriptoService.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 14/10/23.
//

import UIKit

class CriptoService {

    func getCriptoService(completion: @escaping (CriptoData?, Error?) -> Void) {
        let urlString: String = "https://run.mocky.io/v3/188cfbed-878a-4599-9628-d5a3b9b8b814"
        
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
                    let criptoData: CriptoData = try JSONDecoder().decode(CriptoData.self, from: dataResult)
                    print("SUCCESS -> \(#function)")
                    completion(criptoData, nil)
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
