//
//  UpYouTests.swift
//  UpYouTests
//
//  Created by Lucas Neves dos santos pompeu on 12/02/24.
//

import XCTest
@testable import UpYou

final class DefaultRequestBuilderTests: XCTestCase {

    // Teste para verificar se a requisição é construída corretamente com parâmetros de dicionário
    func test_Build_Request_With_Dictionary_Parameters() {
        let builder = DefaultRequestBuilder()
        let endpoint = Endpoint(url: "https://example.com", method: .get, headers: nil, parameters: .dictionary(["key": "value"]))
        let expectedURL = URL(string: "https://example.com")!

        let request = builder.buildRequest(with: endpoint, url: expectedURL)


        XCTAssertEqual(request.url, expectedURL)
        XCTAssertEqual(request.httpMethod, "GET")
        XCTAssertEqual(request.allHTTPHeaderFields?.count, 0)
        XCTAssertEqual(request.httpBody, "{\"key\":\"value\"}".data(using: .utf8))
    }

    // Teste para verificar se a requisição é construída corretamente com parâmetros encodáveis
    func test_Buil_dRequest_With_Encodable_Parameters() {
        struct MyParameters: Encodable {
            let key: String
            let value: Int
        }
        let builder = DefaultRequestBuilder()
        let parameters = MyParameters(key: "test", value: 42)
        let endpoint = Endpoint(url: "https://example.com", method: .post, headers: nil, parameters: .encodable(parameters))
        let expectedURL = URL(string: "https://example.com")!

        let request = builder.buildRequest(with: endpoint, url: expectedURL)

        XCTAssertEqual(request.url, expectedURL)
        XCTAssertEqual(request.httpMethod, "POST")
        XCTAssertEqual(request.allHTTPHeaderFields?.count, 0)
        XCTAssertEqual(request.httpBody, "{\"key\":\"test\",\"value\":42}".data(using: .utf8))
    }

    // Teste para verificar se a requisição é construída corretamente sem parâmetros
    func test_tBuild_Request_Without_Parameters() {
        let builder = DefaultRequestBuilder()
        let endpoint = Endpoint(url: "https://example.com", method: .delete, headers: nil, parameters: nil)
        let expectedURL = URL(string: "https://example.com")!

        let request = builder.buildRequest(with: endpoint, url: expectedURL)

        XCTAssertEqual(request.url, expectedURL)
        XCTAssertEqual(request.httpMethod, "DELETE")
        XCTAssertEqual(request.allHTTPHeaderFields?.count, 0)
        XCTAssertNil(request.httpBody)
    }
}
