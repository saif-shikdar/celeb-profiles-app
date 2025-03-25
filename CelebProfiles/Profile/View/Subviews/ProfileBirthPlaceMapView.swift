//
//  ProfileBirthPlaceMapView.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 23/03/2025.
//

import MapKit
import SwiftUI

struct ProfileBirthPlaceMapView: View {
    let birthPlace: BirthPlace
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Map(initialPosition: .region(birthPlace.regionCoordinates))
            HStack(spacing: 16) {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundStyle(DesignTokens.Colors.white)
                }
                Spacer()
                Text(birthPlace.name)
                    .font(DesignTokens.Typography.titleFont)
                    .foregroundStyle(DesignTokens.Colors.white)
                Image(birthPlace.flag)
            }
            .frame(maxWidth: .infinity)
            .background(DesignTokens.Colors.black.opacity(0.8))
            .safeAreaPadding()
        }
    }
}

#Preview {
    ProfileBirthPlaceMapView(birthPlace: .bangladesh)
}
