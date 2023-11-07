//
//  SearchView.swift
//  ichef
//
//  Created by Student13 on 31/10/23.
//

import SwiftUI
struct SearchRecipe : Decodable, Identifiable {
    var id      : String?
    var title   : String?
    var image   : String?
}

var sampleDataRecipeType: [ SearchRecipe ] =
[
    SearchRecipe(
        id: "1",
        title: "Massas",
        image: ""
    ),
    SearchRecipe(
        id: "2",
        title: "Carnes",
        image: ""
    ),
    SearchRecipe(
        id: "3",
        title: "Sopas",
        image: ""
    )
]
// teste joao pedro

struct SearchView: View {
    @State private var searchText = ""
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                Rectangle()
                    .frame(width: 500, height: 1000)
                    .foregroundColor(Color("Background"))
                    .ignoresSafeArea()
                
                VStack {
                    Image("Logo_Sem_Slogan")
                        .resizable()
                        .frame(width: 75, height: 75, alignment: .topLeading)
                        .foregroundColor(Color.white)
                    
                    Spacer()
                    
                    ForEach(sampleDataRecipeType) { recipe in
                        RecipeTypeView(title: recipe.title!, image: recipe.image!)
                    }
                    
                    .listRowSeparator(.hidden, edges: .all)
                    Spacer()
                    Spacer()
                    Spacer()
                    Spacer()
                }
                .padding(.vertical, 50)
                .padding(.horizontal, 68)
                .navigationTitle("Pesquisar")
                .searchable(text: $searchText)
                
            }
            
        }
    }
    
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
