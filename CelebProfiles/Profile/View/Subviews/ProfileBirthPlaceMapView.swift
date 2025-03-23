//
//  ProfileBirthPlaceMapView.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 23/03/2025.
//

import MapKit
import SwiftUI

struct ProfileBirthPlaceMapView: View {
    let location: CLLocationCoordinate2D
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        ZStack(alignment: .topLeading) {
            Map(initialPosition: .region(region))
            HStack {
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundStyle(DesignTokens.Colors.white)
                }
                Spacer()
                Text("Bangladesh")
                    .font(DesignTokens.Typography.titleFont)
                    .foregroundStyle(DesignTokens.Colors.white)
            }
            .frame(maxWidth: .infinity)
            .background(DesignTokens.Colors.black.opacity(0.8))
            .safeAreaPadding()
        }
    }

    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: location,
            span: .init(latitudeDelta: 4, longitudeDelta: 4)
        )
    }
}

#Preview {
    ProfileBirthPlaceMapView(location: .init(latitude: 23.6850, longitude: 90.3563))
}
