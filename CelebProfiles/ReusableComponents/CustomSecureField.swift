//
//  CustomSecureField.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 21/03/2025.
//

import SwiftUI

struct CustomSecureField: View {
    let placeholder: String
    let text: Binding<String>

    var body: some View {
        SecureField(placeholder, text: text)
            .textFieldStyle(.roundedBorder)
            .padding(.bottom, 12)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CustomSecureField(placeholder: "Password", text: .constant(""))
}
