//
//  DesignTokens.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 21/03/2025.
//

import SwiftUICore

struct DesignTokens {
    struct Colors {
        static let primary = Color("primary")
        static let secondary = Color("secondary")
        static let background = Color("background")
        static let white = Color.white
        static let black = Color.black
    }

    struct Typography {
        static let titleFont = Font.system(size: 20, weight: .bold)
        static let bodyFont = Font.system(size: 16, weight: .regular)
        static let captionFont = Font.system(size: 12, weight: .light)
        static let buttonFont = Font.system(size: 18, weight: .semibold)
    }
}
