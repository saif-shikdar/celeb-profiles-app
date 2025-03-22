//
//  ProfileSectionView.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 22/03/2025.
//

import SwiftUI

struct ProfileSectionView: View {
    let heading: String
    let content: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(heading)
                .font(DesignTokens.Typography.titleFont)
                .foregroundStyle(DesignTokens.Colors.white)
            Text(content)
                .font(DesignTokens.Typography.bodyFont)
                .foregroundStyle(DesignTokens.Colors.white)
        }
    }
}

#Preview {
    ProfileSectionView(heading: "Biography",
                       content: "Midfielder who joined Borussia Dortmund after playing for Birmingham City from 2010 to 2019. In 2023, he joined club Real Madrid. He has also played for the English national team.").background(Color.black)
}
