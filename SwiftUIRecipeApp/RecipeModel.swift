//
//  RecipeModel.swift
//  SwiftUIRecipeApp
//
//  Created by ipeerless on 09/08/2023.
//

import Foundation

enum Category: String, CaseIterable, Identifiable {
    var id: String { self.rawValue }
    case breakfast = "Breakfast"
    case soup = "Soup"
    case salad = "Salad"
    case appetizer = "Appetizer"
    case main = "Main"
    case side = "Side"
    case dessert = "Dessert"
    case snack = "Snack"
    case drink = "Drink"
    
    
}


struct Recipe: Identifiable {
    let id = UUID()
    let name: String
    let image: String
    let description: String
    let ingredients: String
    let directions: String
    let category: Category.RawValue
    let datePublished: String
    let url: String
    
}

extension Recipe {
    static let all: [Recipe] = [
        Recipe(name: "Scrambled Eggs", image: "https://example.com/images/scrambled-eggs.jpg", description: "Classic scrambled eggs", ingredients: "Eggs, salt, pepper", directions: "Beat eggs, add salt and pepper, cook in a pan", category: Category.breakfast.rawValue, datePublished: "2023-08-09", url: "https://example.com/scrambled-eggs"),
        Recipe(name: "Tomato Soup", image: "https://example.com/images/tomato-soup.jpg", description: "Homemade tomato soup", ingredients: "Tomatoes, onion, garlic, broth", directions: "Saute onion and garlic, add tomatoes and broth, blend", category: Category.soup.rawValue, datePublished: "2023-08-09", url: "https://example.com/tomato-soup"),
        Recipe(name: "Caesar Salad", image: "https://example.com/images/caesar-salad.jpg", description: "Classic Caesar salad", ingredients: "Romaine lettuce, croutons, Caesar dressing", directions: "Toss lettuce, croutons, and dressing together", category: Category.salad.rawValue, datePublished: "2023-08-10", url: "https://example.com/caesar-salad"),
        Recipe(name: "Guacamole", image: "https://example.com/images/guacamole.jpg", description: "Homemade guacamole", ingredients: "Avocado, onion, tomato, lime", directions: "Mash avocado, mix with chopped onion, tomato, and lime juice", category: Category.appetizer.rawValue, datePublished: "2023-08-10", url: "https://example.com/guacamole"),
        Recipe(name: "Spaghetti Bolognese", image: "https://example.com/images/spaghetti-bolognese.jpg", description: "Classic spaghetti with Bolognese sauce", ingredients: "Ground beef, tomatoes, onion, garlic", directions: "Brown beef, add onion and garlic, pour in tomatoes, simmer", category: Category.main.rawValue, datePublished: "2023-08-11", url: "https://example.com/spaghetti-bolognese"),
        Recipe(name: "Garlic Bread", image: "https://example.com/images/garlic-bread.jpg", description: "Homemade garlic bread", ingredients: "Baguette, butter, garlic, parsley", directions: "Mix garlic and parsley with butter, spread on sliced baguette, toast", category: Category.side.rawValue, datePublished: "2023-08-11", url: "https://example.com/garlic-bread"),
        Recipe(name: "Chocolate Brownies", image: "https://example.com/images/chocolate-brownies.jpg", description: "Rich chocolate brownies", ingredients: "Flour, cocoa powder, sugar, eggs", directions: "Mix dry and wet ingredients, bake in a pan", category: Category.dessert.rawValue, datePublished: "2023-08-12", url: "https://example.com/chocolate-brownies"),
        Recipe(name: "Fruit Salad", image: "https://example.com/images/fruit-salad.jpg", description: "Refreshing fruit salad", ingredients: "Assorted fruits, honey, mint leaves", directions: "Chop fruits, drizzle with honey, garnish with mint", category: Category.snack.rawValue, datePublished: "2023-08-12", url: "https://example.com/fruit-salad"),
        // Add 2 more recipes...
    ]
}
