//
//  ProfileDetailRowView.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 22/03/2025.
//

import SwiftUI

struct ProfileDetailRowView: View {
    let image: String
    let heading: String
    let content: String
    
    var body: some View {
        HStack(alignment: .bottom, spacing: 24) {
            Image(systemName: image)
                .foregroundStyle(DesignTokens.Colors.white)
            Text(heading)
                .font(DesignTokens.Typography.bodyFont)
                .foregroundStyle(DesignTokens.Colors.white)
            Spacer()
            Text(content)
                .font(DesignTokens.Typography.bodyFont)
                .foregroundStyle(DesignTokens.Colors.white)
        }
    }
}

#Preview {
    ProfileDetailRowView(image: "birthday.cake",
                         heading: "Birthday",
                         content: "June 29, 2003")
    .background(Color.black)
}
