//
//  Profile.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 21/03/2025.
//

struct Profile: Hashable, Codable {
    let about: String
    let profilePictureURL: String
    let work: String
    let beforeFame: String
    let birthSign: String
    let birthday: String
    let birthplace: String
    let familyLife: String
    let forename: String
    let surname: String
    let trivia: String
    
    enum CodingKeys: String, CodingKey {
        case about
        case profilePictureURL = "profile_picture_url"
        case work
        case beforeFame = "before_fame"
        case birthSign = "birth_sign"
        case birthday
        case birthplace
        case familyLife = "family_life"
        case forename
        case surname
        case trivia
    }
}
