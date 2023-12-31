//
//  AuthService.swift
//  NoteMe
//
//  Created by PavelKrm on 5.12.23.
//

import Foundation
import Firebase

final class AuthService {
    
    private var firebase: Auth {
        return Auth.auth()
    }
    
    func signIn(email: String,
                pass: String,
                completion: @escaping (Result<User, Error>) -> Void) {
        
        firebase.signIn(withEmail: email, password: pass) { result, error in
            
            if let result {
                completion(.success(result.user))
            } else if let error {
                completion(.failure(error))
            }
        }
    }
    
    func signUp(email: String,
                pass: String,
                completion: @escaping (Result<User, Error>) -> Void) {
        firebase.createUser(withEmail: email, password: pass) { result, error in
            if let result {
                completion(.success(result.user))
            } else if let error {
                completion(.failure(error))
            }
        }
    }
    
    func resetPassword(email: String, completion: @escaping (Bool) -> Void) {
        firebase.sendPasswordReset(withEmail: email) { error in
            if let error {
                print(error.localizedDescription)
                completion(false)
            } else {
                completion(true)
            }
        }
    }
}
