//
//  BaseRepository.swift
//  PizzaApp
//
//  Created by Cleís Aurora Pereira on 13/04/21.
//

import Alamofire

class BaseRepository {
    func request<I: Encodable, O: Decodable>(url: String, method: HttpMethod = .get, argument: I? = nil,
                                             then handler: @escaping (Result<O, Error>) -> Void) {
        AF.request(
            url, method: method.asAFHTTPMethod, parameters: argument, encoder: JSONParameterEncoder.default
        ).validate().responseDecodable(of: O.self) { response in
            do {
                let result = try response.result.get()

                handler(.success(result))
            } catch {
                handler(.failure(error))
            }
        }
    }
}
