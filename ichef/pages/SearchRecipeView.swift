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
        image: "https://s2.glbimg.com/HycOIww_t_K8-yxxh9iwF3rVF2I=/620x480/smart/e.glbimg.com/og/ed/f/original/2022/04/19/bife_de_chorizo_wagyu.jpg"
    ),
    SearchRecipe(
        id: "2",
        title: "Filé a parmegiana",
        image: "https://www.receiteria.com.br/wp-content/uploads/file-de-frango-parmegiana-730x548.jpeg"
    ),
    SearchRecipe(
        id: "3",
        title: "Frango Frito",
        image: "https://cdn0.tudoreceitas.com/pt/posts/5/0/1/frango_frito_americano_do_kfc_5105_orig.jpg"
    )
]

var sampleDataRecipeSaladas: [ SearchRecipe ] =
[
    SearchRecipe(
        id: "1",
        title: "Vinagrete",
        image: "https://cdn0.tudoreceitas.com/pt/posts/4/4/3/vinagrete_simples_para_churrasco_6344_600.jpg"
    ),
    SearchRecipe(
        id: "2",
        title: "Salada de frutas",
        image: "https://receitahomeoffice.com.br/wp-content/uploads/2023/07/salada-de-frutas-scaled.webp"
    ),
    SearchRecipe(
        id: "3",
        title: "Salada Caesar",
        image: "https://img.cybercook.com.br/receitas/950/salada-cesar-com-camarao.jpeg"
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
                    else if (type == "Saladas") {
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
