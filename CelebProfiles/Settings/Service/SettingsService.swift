//
//  SettingsService.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 21/03/2025.
//

import FirebaseCore
import FirebaseFirestore

class SettingsService {
    let db = Firestore.firestore()

    func fetchUserData(
        userID: String, completion: @escaping (Result<User?, Error>) -> Void
    ) {
        let docRef = db.collection("users").document(userID)

        docRef.getDocument(as: User.self) { result in
            switch result {
            case .success(let user):
                completion(.success(user))
            case .failure(_):
                completion(.failure(CustomError.noData))
            }
        }
    }
}
