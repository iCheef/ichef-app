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

var sampleData: [ SearchRecipe ] =
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
    )
]

struct SearchView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            ZStack {
                Rectangle()
                    .frame(width: 500, height: 1000)
                    .foregroundColor(Color("Background"))
                    .ignoresSafeArea()
                
                // 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
                VStack {
                    Image("Logo_Sem_Slogan")
                    
                    
                    Spacer()
                    ForEach(sampleData) { recipe in
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
                .navigationTitle("Choose the cuisine")
                .searchable(text: $searchText)
                // teste eurian
                
            }
            
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
