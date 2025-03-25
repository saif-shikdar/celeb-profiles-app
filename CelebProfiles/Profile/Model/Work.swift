//
//  Work.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 25/03/2025.
//

enum Work: String, Codable {
    case actor
    case actress
    case footballPlayer

    init(from decoder: Decoder) throws {
        guard
            let value = try? decoder.singleValueContainer().decode(String.self)
        else {
            self = .actor
            return
        }
        self = Work(rawValue: value) ?? .actor
    }
    
    var name: String {
        switch self {
        case .actor:
            return "Actor"
        case .actress:
            return "Actress"
        case .footballPlayer:
            return "Football Player"
        }
    }
}
