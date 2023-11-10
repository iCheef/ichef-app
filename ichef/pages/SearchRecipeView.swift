//
//  SearchRecipeView.swift
//  ichef
//
//  Created by Student13 on 31/10/23.
//

import SwiftUI
//struct SearchRecipe : Decodable, Identifiable {
//    var id      : String?
//    var title   : String?
//    var image   : String?
//}

var sampleDataRecipeMassas: [ SearchRecipe ] =
[
    SearchRecipe(
        id: "1",
        title: "Macarrão ao molho branco",
        image: "https://static.itdg.com.br/images/1200-675/108cb886572a98cb7d90372c5a799ff0/353778-original.jpg"
    ),
    SearchRecipe(
        id: "2",
        title: "Pizza de calabresa",
        image: "https://cdn0.tudoreceitas.com/pt/posts/9/8/3/pizza_calabresa_e_mussarela_4389_600.jpg"
    ),
    SearchRecipe(
        id: "3",
        title: "Panqueca de carne",
        image: "https://www.minhareceita.com.br/app/uploads/2022/10/panqueca650.jpg"
    )
]

struct SearchRecipeView: View {
    @State  var searchText = ""
    @State  var type : String
    var body: some View {
        NavigationStack {
            ZStack {
                Color("Background")
                    .ignoresSafeArea()
                
                
                VStack{
                    
                    Image("Logo_Sem_Slogan")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 75, height: 75, alignment: .topLeading)
                        .colorInvert()
                        .padding(.vertical, -250)
                    
                    VStack {
                        
                        ForEach(sampleDataRecipeMassas) { recipe in
                            RecipeView(title: recipe.title!, image: recipe.image!,nota:4)
                            
                        }
                        .padding(.horizontal, 5)
                        
                    }
                }
                
            }
        }
        
       // .navigationTitle("Pesquisar")
        .searchable(text: $searchText)
    }
}



struct SearchRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        SearchRecipeView(type:"massas")
    }
}
