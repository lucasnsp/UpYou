//
//  MoneyQuoteService.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 27/09/23.
//

import UIKit

enum ErrorDetailMoney: Swift.Error {
    case errorURL(urlString: String)
    case detailError(detail: String)
}

class MoneyPhrasesService {
    
    func getMoneyPhrasesService(completion: @escaping (MoneyPhrasesData?, Error?) -> Void) {
        let urlString: String = "https://run.mocky.io/v3/70d4609f-482a-4544-8d2a-f1f8f9a006a0"
        
        guard let url: URL = URL(string: urlString) else { return completion(nil, ErrorDetailMoney.errorURL(urlString: urlString))}
        
        var request = URLRequest(url: url)
        request.httpMethod = "GET"
        let task = URLSession.shared.dataTask(with: request) { data, response, error in
            
            guard let dataResult = data else { return completion(nil, ErrorDetailMoney.detailError(detail: "Error Data"))}
            
            let json = try? JSONSerialization.jsonObject(with: dataResult, options: [])
            print(json as Any)
            
            guard let response = response as? HTTPURLResponse else { return }
            
            if response.statusCode == 200 {
                do {
                    let moneyPhrasesData: MoneyPhrasesData = try JSONDecoder().decode(MoneyPhrasesData.self, from: dataResult)
                    print("SUCESS -> \(#function)")
                    completion(moneyPhrasesData, nil)
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
