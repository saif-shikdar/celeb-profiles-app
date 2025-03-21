//
//  SocialLink.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 21/03/2025.
//

struct SocialLink: Hashable, Codable {
    let name: SocialLinkType
    let linkURL: String
    
    enum CodingKeys: String, CodingKey {
        case linkURL = "link_url"
        case name
    }
}
