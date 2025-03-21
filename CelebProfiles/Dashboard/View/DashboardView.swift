//
//  DashboardView.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 21/03/2025.
//

import SwiftUI
import SwiftUICore

struct DashboardView: View {

    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                Text("Hello Dashboard!")
                    .font(DesignTokens.Typography.titleFont)
                    .foregroundStyle(DesignTokens.Colors.primary)
            }
            .safeAreaPadding()
        }

    }
}

#Preview {
    DashboardView()
}
