//
//  DashboardView.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 28/03/2025.
//

import SwiftUI
import SwiftUICore

struct DashboardView: View {
    @StateObject var viewModel: DashboardViewModel

    var body: some View {
        Text("Dashboard")
    }
}

#Preview {
    DashboardView(viewModel: DashboardViewModel(coordinator: nil))
}
