//
//  CountryView.swift
//  InteroperabilityDemo
//
//  Created by CapG on 09/03/26.
//

import Foundation
import SwiftUI

struct Country: Identifiable {
    let id = UUID()
    let name: String
    let flag: String
}

let countries = [
    Country(name: "India", flag: "🇮🇳"),
    Country(name: "United States", flag: "🇺🇸"),
    Country(name: "United Kingdom", flag: "🇬🇧"),
    Country(name: "Japan", flag: "🇯🇵"),
    Country(name: "Canada", flag: "🇨🇦"),
    Country(name: "Germany", flag: "🇩🇪"),
    Country(name: "France", flag: "🇫🇷"),
    Country(name: "Australia", flag: "🇦🇺"),
    Country(name: "Brazil", flag: "🇧🇷"),
    Country(name: "Italy", flag: "🇮🇹"),
    Country(name: "Spain", flag: "🇪🇸"),
    Country(name: "Bangladesh", flag: "🇧🇩")
]

struct CountryView: View {
    let countries: [Country]
    var onSelect: ((Country)->Void)?
    var body: some View {
        NavigationView {
            List(countries) { country in
                HStack(spacing: 10) {
                    Text(country.flag)
                        .font(.largeTitle)
                    Text(country.name)
                        .font(.headline)
                }
                .contentShape(Rectangle())
                .onTapGesture(perform: {
                    onSelect?(country)
                })
            }
            .navigationTitle("Countries")
        }
    }
}

#Preview {
    CountryView(countries: countries)
}
