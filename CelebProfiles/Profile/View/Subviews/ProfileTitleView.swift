//
//  ProfileTitleView.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 22/03/2025.
//

import SwiftUI

struct ProfileTitleView: View {
    let name: String
    let work: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 6) {
            Text(name)
                .font(DesignTokens.Typography.titleFont)
                .foregroundStyle(DesignTokens.Colors.white)
            Text(work)
                .font(DesignTokens.Typography.captionFont)
                .foregroundStyle(DesignTokens.Colors.white)
            Divider()
                .overlay(DesignTokens.Colors.white)
                .padding(.top, 12)
        }
    }
}

#Preview {
    ProfileTitleView(name: "Jude Bellingham",
                     work: "Football Player")
    .background(Color.black)
}
