//
//  Endpoints.swift
//  PizzaApp
//
//  Created by Cleís Aurora Pereira on 13/04/21.
//

enum Endpoints: String {
    case signin = "/v1/signin"
    case pizzas = "/v1/pizza"

    var url: String {
        "\(Constants.baseUrl)\(rawValue)"
    }
}
