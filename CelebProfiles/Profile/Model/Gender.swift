//
//  Gender.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 27/03/2025.
//

enum Gender: String, Codable {
    case m
    case f
    case other
    
    init(from decoder: Decoder) throws {
        guard
            let value = try? decoder.singleValueContainer().decode(String.self)
        else {
            self = .m
            return
        }
        self = Gender(rawValue: value) ?? .m
    }
    
    var name: String {
        switch self {
        case .m:
            return "Male"
        case .f:
            return "Female"
        case .other:
            return "Other"
        }
    }
}
