//
//  AgeCalculator.swift
//  CelebProfiles
//
//  Created by Saif Shikdar on 23/03/2025.
//

import Foundation

struct AgeCalculator {
    static func calculateAge(from dateOfBirth: Date) -> Int {
        let calendar = Calendar.current
        let components = calendar.dateComponents([.year], from: dateOfBirth, to: Date())
        return components.year ?? 0
    }
}
