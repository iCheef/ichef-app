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

var sampleDataRecipeCarnes: [ SearchRecipe ] =
[
    SearchRecipe(
        id: "1",
        title: "Bife wagyu",
        image: "https://static.itdg.com.br/images/1200-675/108cb886572a98cb7d90372c5a799ff0/353778-original.jpg"
    ),
    SearchRecipe(
        id: "2",
        title: "Filé a parmegiana",
        image: "https://cdn0.tudoreceitas.com/pt/posts/9/8/3/pizza_calabresa_e_mussarela_4389_600.jpg"
    ),
    SearchRecipe(
        id: "3",
        title: "",
        image: "https://www.minhareceita.com.br/app/uploads/2022/10/panqueca650.jpg"
    )
]

var sampleDataRecipeSaladas: [ SearchRecipe ] =
[
    SearchRecipe(
        id: "1",
        title: "Vinagrete",
        image: "https://static.itdg.com.br/images/1200-675/108cb886572a98cb7d90372c5a799ff0/353778-original.jpg"
    ),
    SearchRecipe(
        id: "2",
        title: "Salada de frutas",
        image: "https://cdn0.tudoreceitas.com/pt/posts/9/8/3/pizza_calabresa_e_mussarela_4389_600.jpg"
    ),
    SearchRecipe(
        id: "3",
        title: "Salada Caesar",
        image: "https://www.minhareceita.com.br/app/uploads/2022/10/panqueca650.jpg"
    )
]

struct SearchRecipeView: View {
    @State  var searchText = ""
    @State  var type : String
    @State private var actualTypeData : [ SearchRecipe ] = []
    var body: some View {
        NavigationView {
            
            ZStack {
                Color("Background")
                    .ignoresSafeArea()
                
                VStack{
                    
                    Image("Logo_Sem_Slogan")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 85, height: 85, alignment: .topLeading)
                        .colorInvert()
                        .padding(.vertical, -60)
                    
                    VStack {
                        ScrollView {
                            ForEach(actualTypeData) { recipe in
                                NavigationLink(destination: HomeView(hasRecipe: true, recipe: RecipeModel(id: recipe.id, name: recipe.title, steps: test_steps, ingredients: test_ingredients, time: "30", portions: "10", difficulty: "Fácil"))){
                                    VStack {
                                        
                                        RecipeTypeView(title: recipe.title!, image: recipe.image!)
                                        Spacer()
                                    }.multilineTextAlignment(.leading)
                                }
                                .padding(.horizontal, 10)
                                
                                .listRowSeparator(.hidden, edges: .all)
                                
                                
                            }
                            
                        }
                    }
                }.onAppear(){
                    if (type == "Massas"){
                        actualTypeData = sampleDataRecipeMassas
                    }
                    else if (type == "Carnes") {
                        actualTypeData = sampleDataRecipeCarnes
                    }
                    else if (type == "Salada") {
                        actualTypeData = sampleDataRecipeSaladas
                    }
                }
                
            }
        }
        .searchable(text: $searchText)
        
    }
    
}



struct SearchRecipeView_Previews: PreviewProvider {
    static var previews: some View {
        SearchRecipeView(type:"Salada")
    }
}
