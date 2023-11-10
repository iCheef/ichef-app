//
//  FavoritesView.swift
//  ichef
//
//  Created by Student13 on 31/10/23.
//

import SwiftUI

var sampleDataRecipe: [ SearchRecipe ] =
[
    SearchRecipe(
        id: "1",
        title: "Pizza Marguerita",
        image: "https://static.itdg.com.br/images/1200-630/c0402ec0fd16e13c7b7b691151d53e1d/277814-original.jpg",
        nota: 3
    ),
    SearchRecipe(
        id: "2",
        title: "Lasanha De Carne",
        image: "https://receitasdedelicias.com.br/wp-content/uploads/2023/05/Lasanha-de-Carne-Moida.jpg",
        nota: 4
    ),
    SearchRecipe(
        id: "3",
        title: "Macarrão a Bolonhesa",
        image: "https://areademulher.r7.com/wp-content/uploads/2022/04/macarrao-a-bolonhesa-receita-simples-e-facil-de-fazer.jpeg",
        nota: 5
    )
]

struct FavoritesView: View {
    @State private var searchText = "Pesquisar"
    
    var body: some View {
        
        NavigationStack {
            
            ZStack {
                Color("Background")
                    .ignoresSafeArea()
                
                VStack {
                    
                    Image("Logo_Sem_Slogan")
                        .resizable()
                        .frame(width: 75, height: 75)
                        .colorInvert()
                        .multilineTextAlignment(.center)

                        HStack {
                            ScrollView{
                                
                                ForEach(sampleDataRecipe) { recipe in
                                        RecipeView(title: recipe.title!, image: recipe.image!,nota: recipe.nota!)
                                        .padding(.vertical, 0)
                                        .padding(.horizontal, 10)
                                }
                            .listRowSeparator(.hidden, edges: .all)
                          
                        }
                        
                        
                    }
                        .padding(.vertical, -10)
                    
                    
                    
                }
                
            }
        }.background(Color("Background"))
    }
    
    
}


struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
