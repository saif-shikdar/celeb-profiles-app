//
//  Profile.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 21/03/2025.
//

import Foundation

struct Profile: Hashable, Codable {
    let about: String
    let profilePictureURL: String
    let work: Work
    let beforeFame: String
    let birthSign: BirthSign
    let birthday: Date
    let birthplace: BirthPlace
    let familyLife: String
    let forename: String
    let surname: String
    let trivia: String
    let gender: Gender?

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
        case gender
    }

    init(
        about: String, profilePictureURL: String, work: Work,
        beforeFame: String, birthSign: BirthSign, birthday: Date,
        birthplace: BirthPlace, familyLife: String, forename: String,
        surname: String, trivia: String, gender: Gender? = nil
    ) {
        self.about = about
        self.profilePictureURL = profilePictureURL
        self.work = work
        self.beforeFame = beforeFame
        self.birthSign = birthSign
        self.birthday = birthday
        self.birthplace = birthplace
        self.familyLife = familyLife
        self.forename = forename
        self.surname = surname
        self.trivia = trivia
        self.gender = gender
    }

    init(from decoder: any Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.about = try container.decode(String.self, forKey: .about)
        self.profilePictureURL = try container.decode(
            String.self, forKey: .profilePictureURL)
        self.work = try container.decode(
            Work.self, forKey: .work)
        self.beforeFame = try container.decode(String.self, forKey: .beforeFame)
        self.birthSign = try container.decode(
            BirthSign.self, forKey: .birthSign)

        let dateString = try container.decode(String.self, forKey: .birthday)
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        if let date = formatter.date(from: dateString) {
            self.birthday = date
        } else {
            throw DecodingError.dataCorruptedError(
                forKey: .birthday,
                in: container,
                debugDescription:
                    "Date string does not match format expected by formatter.")
        }
        
        self.birthplace = try container.decode(
            BirthPlace.self, forKey: .birthplace)
        self.familyLife = try container.decode(String.self, forKey: .familyLife)
        self.forename = try container.decode(String.self, forKey: .forename)
        self.surname = try container.decode(String.self, forKey: .surname)
        self.trivia = try container.decode(String.self, forKey: .trivia)
        self.gender = try container.decode(
            Gender.self, forKey: .gender)
    }
}
