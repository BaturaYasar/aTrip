//
//  NetworkManager.swift
//  aTrip
//
//  Created by Mehmet Baturay Yasar on 25/11/2022.
//

import Foundation
import Moya

protocol NetworkManagerDelegate {
    var provider:MoyaProvider<PropertyAPI> {get}
    
    func propertyList(request:PropertyListRequest, completition: @escaping (Result<PropertyListResponse, Error>) -> ())
}

class NetworkManager: NetworkManagerDelegate {
    static let shared = NetworkManager()
    
    var provider = MoyaProvider<PropertyAPI>(plugins: [NetworkLoggerPlugin(verbose: true, cURL: true)])
    
    func propertyList(request: PropertyListRequest, completition: @escaping (Result<PropertyListResponse, Error>) -> ()) {
        requestA(target: .propertyList(request: request), completion: completition)
    }
    
}

private extension NetworkManager {
    private func requestA<T: Decodable>(target: PropertyAPI, completion: @escaping (Result<T, Error>) -> ()) {
        provider.request(target) { result in
            switch result {
            case let .success(response):
                do {
                    let result = try JSONDecoder().decode(T.self,from: response.data)
                    completion(.success(result))
                }catch {
                    completion(.failure(error))
                }
            case let .failure(error):
                completion(.failure(error))
            }
        }
    }
}
