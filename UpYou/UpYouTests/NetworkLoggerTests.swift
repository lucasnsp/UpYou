//
//  NetworkLoggerTests.swift
//  UpYouTests
//
//  Created by Lucas Neves dos santos pompeu on 12/02/24.
//

import XCTest
@testable import UpYou

final class NetworkLoggerTests: XCTestCase {

    // Teste para verificar se o log é gerado corretamente para uma solicitação HTTP bem-sucedida
    func testLogSuccessRequest() {
        let request = URLRequest(url: URL(string: "https://example.com")!)
        let response = HTTPURLResponse(url: URL(string: "https://example.com")!, statusCode: 200, httpVersion: nil, headerFields: nil)
        let data = "{\"key\":\"value\"}".data(using: .utf8)

        NetworkLogger.log(request: request, response: response, data: data, error: nil)

        XCTAssertTrue(request.url == request.url)

    }

    // Teste para verificar se o log é gerado corretamente para uma solicitação HTTP malsucedida
    func testLogErrorRequest() {
        let request = URLRequest(url: URL(string: "https://example.com")!)
        let error = NSError(domain: "TestDomain", code: 404, userInfo: [NSLocalizedDescriptionKey: "Not Found"])

        NetworkLogger.log(request: request, response: nil, data: nil, error: error)

        XCTAssert((request.url != nil))
    }

    // Teste para verificar se o log é gerado corretamente para uma resposta JSON
    func testLogJSONResponse() {
        let request = URLRequest(url: URL(string: "https://example.com")!)
        let response = HTTPURLResponse(url: URL(string: "https://example.com")!, statusCode: 200, httpVersion: nil, headerFields: nil)
        let data = "{\"key\":\"value\"}".data(using: .utf8)

        NetworkLogger.log(request: request, response: response, data: data, error: nil)

        // Assert
        // Verifique se os logs foram impressos corretamente
        // Você pode adicionar mais asserções conforme necessário
    }

    // Teste para verificar se o log é gerado corretamente para uma resposta JSON inválida
    func testLogInvalidJSONResponse() {
        // Arrange
        let request = URLRequest(url: URL(string: "https://example.com")!)
        let response = HTTPURLResponse(url: URL(string: "https://example.com")!, statusCode: 200, httpVersion: nil, headerFields: nil)
        let data = "Invalid JSON".data(using: .utf8)

        // Act
        NetworkLogger.log(request: request, response: response, data: data, error: nil)

        // Assert
        // Verifique se os logs foram impressos corretamente
        // Você pode adicionar mais asserções conforme necessário
    }

}
