//
//  LoginRepository.swift
//  PizzaApp
//
//  Created by Cleís Aurora Pereira on 13/04/21.
//

protocol LoginRepositoryProtocol {
    func signIn(email: String, password: String, then handler: @escaping (Result<Session, Error>) -> Void)
}

final class LoginRepository: BaseRepository, LoginRepositoryProtocol {
    func signIn(email: String, password: String, then handler: @escaping (Result<Session, Error>) -> Void) {
        let signin = Signin(email: email, password: password)

        request(url: Endpoints.signin.url, method: .post, argument: signin, then: handler)
    }
}
