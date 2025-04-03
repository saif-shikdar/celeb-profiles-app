//
//  User.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 21/03/2025.
//

struct User: Codable {
    let forename: String
    let surname: String
    
    enum CodingKeys: String, CodingKey {
        case forename
        case surname
    }
}
