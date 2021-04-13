//
//  HttpMethod.swift
//  PizzaApp
//
//  Created by Cleís Aurora Pereira on 13/04/21.
//

import Alamofire

enum HttpMethod: String {
    case get = "GET"
    case post = "POST"

    var asAFHTTPMethod: HTTPMethod {
        HTTPMethod(rawValue: rawValue)
    }
}
