//
//  RecipesViewModel.swift
//  SwiftUIRecipeApp
//
//  Created by ipeerless on 09/08/2023.
//

import Foundation

class RecipesViewModel: ObservableObject {
    @Published private(set) var recipes: [Recipe] = []
    
    init() {
        recipes = Recipe.all
    }
    func addRecipe(recipe: Recipe) {
        recipes.append(recipe)
    }
}
