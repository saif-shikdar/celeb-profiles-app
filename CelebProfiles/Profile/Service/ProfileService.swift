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
    
    func fetchProfiles(completion: @escaping (Result<Profile?, Error>) -> Void
    ) {
        let docRef = db.collection("profiles")
    }
}
