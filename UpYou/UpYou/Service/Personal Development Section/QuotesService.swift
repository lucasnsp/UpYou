//
//  QuotesService.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 25/09/23.
//

import UIKit

enum ErrorDetail: Swift.Error {
    case errorURL(urlString: String)
    case detailError(detail: String)
}

class QuotesService {
    
    func getQuoteService(completion: @escaping (QuoteData?, Error?) -> Void) {
        let urlString: String = "https://run.mocky.io/v3/a8da3a69-775e-4215-b485-bc2f9a898951"
        
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
                    let quoteData: QuoteData = try JSONDecoder().decode(QuoteData.self, from: dataResult)
                    print("SUCCESS -> \(#function)")
                    completion(quoteData, nil)
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