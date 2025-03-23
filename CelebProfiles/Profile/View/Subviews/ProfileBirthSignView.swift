//
//  ProfileBirthSignView.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 23/03/2025.
//

import SwiftUI

struct ProfileBirthSignView: View {
    let birthSign: BirthSign

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 16) {
                Text(birthSign.title)
                    .modifier(ProfileBodyCustomModifier())
                Text(birthSign.description)
                    .modifier(ProfileCaptionCustomModifier())
                Divider()
                    .overlay(DesignTokens.Colors.white)
                Text("Positive Traits")
                    .modifier(ProfileBodyCustomModifier())
                Divider()
                    .overlay(DesignTokens.Colors.white)
                Text(birthSign.positiveTraits)
                    .modifier(ProfileCaptionCustomModifier())
                Divider()
                    .overlay(DesignTokens.Colors.white)
                Text("Negative Traits")
                    .modifier(ProfileBodyCustomModifier())
                Divider()
                    .overlay(DesignTokens.Colors.white)
                Text(birthSign.negativeTraits)
                    .modifier(ProfileCaptionCustomModifier())
                Divider()
                    .overlay(DesignTokens.Colors.white)
                Text("Relationships")
                    .modifier(ProfileBodyCustomModifier())
                Divider()
                    .overlay(DesignTokens.Colors.white)
                Text(birthSign.relationshipTraits)
                    .modifier(ProfileCaptionCustomModifier())
            }
            .safeAreaPadding()
            .frame(maxWidth: .infinity, alignment: .leading)
            .background(DesignTokens.Colors.black)
        }
    }
}

struct ProfileCaptionCustomModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(DesignTokens.Typography.captionFont)
            .foregroundStyle(DesignTokens.Colors.white)
            .lineSpacing(8.0)
    }
}

struct ProfileBodyCustomModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(DesignTokens.Typography.bodyFont)
            .foregroundStyle(DesignTokens.Colors.white)
    }
}

#Preview {
    ProfileBirthSignView(birthSign: .aries)
}
