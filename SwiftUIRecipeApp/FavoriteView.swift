//
//  FavoriteView.swift
//  SwiftUIRecipeApp
//
//  Created by ipeerless on 08/08/2023.
//

import SwiftUI

struct FavoriteView: View {
    var body: some View {
        NavigationView {
            Text("You have not saved my recipes")
                .padding()
                .navigationTitle("My Recipes")
        }
        .navigationViewStyle(.stack)
    }
}

struct FavoriteView_Previews: PreviewProvider {
    static var previews: some View {
        FavoriteView()
    }
}
