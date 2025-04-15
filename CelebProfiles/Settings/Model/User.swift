//
//  User.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 21/03/2025.
//

struct User: Codable {
    let forename: String
    let surname: String
    let gender: Gender
    
    enum CodingKeys: String, CodingKey {
        case forename
        case surname
        case gender
    }
    
    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.forename = try container.decode(String.self, forKey: .forename)
        self.surname = try container.decode(String.self, forKey: .surname)
        self.gender = try container.decode(Gender.self, forKey: .gender)
    }
}
