//
//  NetworkLayer.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 13/01/24.
//

import Foundation

protocol NetworkLayer {
    func request<T>(with endpoint: Endpoint, decodeType: T.Type, completion: @escaping (Result<T, NetworkError>) -> Void) where T : Decodable
}
