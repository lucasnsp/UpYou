//
//  HabitsService.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 03/10/23.
//

import UIKit

class HabitsService {
    
    func getHabitsService(completion: @escaping (HabitsData?, Error?) -> Void) {
        let urlString: String = "https://run.mocky.io/v3/0af28733-74e0-4d4f-aec9-7efb369212ba"
        
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
                    let habitsData: HabitsData = try JSONDecoder().decode(HabitsData.self, from: dataResult)
                    print("SUCCESS -> \(#function)")
                    completion(habitsData, nil)
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
