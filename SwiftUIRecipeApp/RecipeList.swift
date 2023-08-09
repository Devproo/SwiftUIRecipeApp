//
//  RecipeList.swift
//  SwiftUIRecipeApp
//
//  Created by ipeerless on 09/08/2023.
//

import SwiftUI

struct RecipeList: View {
    var recipes: [Recipe]
    var body: some View {
        VStack {
            HStack {
                Text("\(recipes.count) \(recipes.count > 1 ? "recipes" : "recipes")")
                    .font(.headline)
                    .fontWeight(.medium)
                    .opacity(0.7)
                Spacer()
            }
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 140), spacing: 15)], spacing: 15) {
                ForEach(recipes) { recipe in
                    NavigationLink(destination: RecipeView(recipe: recipe)) {
                        
                        RecipeCard(recipe: recipe)
                    }
                }
            }
            .padding(.top)
            
        }
        .padding(.horizontal)
    }
}

struct RecipeList_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView {
            RecipeList(recipes: Recipe.all)
        }
    }
}
