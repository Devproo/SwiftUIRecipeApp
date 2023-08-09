//
//  NewRecipeView.swift
//  SwiftUIRecipeApp
//
//  Created by ipeerless on 08/08/2023.
//

import SwiftUI

struct NewRecipeView: View {
    @State private var showAddRecipe = false
    var body: some View {
        NavigationView {
            Button("Add Recipe Manualy") {
               showAddRecipe = true
            }
                .navigationTitle("New Recipe")
        }
        .navigationViewStyle(.stack)
        .sheet(isPresented: $showAddRecipe) {
            AddRecipeView()
        }
    }
}

struct NewRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        NewRecipeView()
    }
}
