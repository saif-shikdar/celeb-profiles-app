//
//  CustomTextField.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 21/03/2025.
//

import SwiftUI

struct CustomTextField: View {
    let placeholder: String
    let text: Binding<String>

    var body: some View {
        TextField(placeholder, text: text)
            .frame(height: 40)
            .textFieldStyle(.roundedBorder)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CustomTextField(placeholder: "Username",
                    text: .constant(""))
}
