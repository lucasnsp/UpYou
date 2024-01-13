//
//  BuildRequest.swift
//  UpYou
//
//  Created by Lucas Neves dos santos pompeu on 13/01/24.
//

import Foundation

protocol RequestBuilder {
    func buildRequest(with endpoint: Endpoint, url: URL) -> URLRequest
}
