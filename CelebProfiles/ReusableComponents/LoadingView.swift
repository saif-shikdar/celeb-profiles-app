//
//  LoadingView.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 21/03/2025.
//

import SwiftUICore
import SwiftUI

struct LoadingView: View {
    let isLoading: Bool
    
    var body: some View {
        if (isLoading) {
            ProgressView()
                .tint(.white)
                .scaleEffect(1.5)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.black.opacity(0.2))
        }
    }
}

#Preview {
    LoadingView(isLoading: true)
}
