//
//  ProfileService.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 21/03/2025.
//

import FirebaseCore
import FirebaseFirestore

class ProfileService {
    let db = Firestore.firestore()
    
    func fetchProfiles(gender: Gender, completion: @escaping (Result<[Profile], Error>) -> Void
    ) async {
        var profiles: [Profile] = []
        do {
            var querySnapshot = try await db.collection("profiles")
                .getDocuments()
            if (gender != .other) {
                querySnapshot = try await db.collection("profiles")
                    .whereField("gender", isEqualTo: gender.rawValue)
                    .getDocuments()
            }
            for document in querySnapshot.documents {
                do {
                    let profile = try document.data(as: Profile.self)
                    profiles.append(profile)
                } catch {
                    print(error.localizedDescription)
                }
            }
            completion(.success(profiles))
        } catch {
            completion(.failure(CustomError.noData))
        }
    }
}
