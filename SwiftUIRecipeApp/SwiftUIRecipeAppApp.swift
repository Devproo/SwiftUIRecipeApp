//
//  SwiftUIRecipeAppApp.swift
//  SwiftUIRecipeApp
//
//  Created by ipeerless on 08/08/2023.
//

import SwiftUI

@main
struct SwiftUIRecipeAppApp: App {
    @StateObject var recipesViewModel = RecipesViewModel()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(recipesViewModel)
        }
    }
}
