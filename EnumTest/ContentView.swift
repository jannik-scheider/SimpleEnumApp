//
//  ContentView.swift
//  EnumTest
//
//  Created by Jannik Scheider on 22.05.24.
//

import SwiftUI
enum FoodCategory: String, CaseIterable, Identifiable {
    case italian = "Italian"
    case chinese = "Chinese"
    case indian = "Indian"
    case american = "American"

    var id: Self { self }
}
struct ContentView: View {
    @State private var selectedCategory: FoodCategory = .italian

    var body: some View {
        VStack(spacing: 50) {
            Text("Selected Category: \(selectedCategory.rawValue)")
            Picker("Food Category", selection: $selectedCategory) {
                ForEach(FoodCategory.allCases) { category in
                    Text(category.rawValue)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
