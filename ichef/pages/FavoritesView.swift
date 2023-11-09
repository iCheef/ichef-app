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
        image: "https://static.itdg.com.br/images/1200-630/c0402ec0fd16e13c7b7b691151d53e1d/277814-original.jpg"
    ),
    SearchRecipe(
        id: "2",
        title: "Lasanha De Carne",
        image: "https://receitasdedelicias.com.br/wp-content/uploads/2023/05/Lasanha-de-Carne-Moida.jpg"
    ),
    SearchRecipe(
        id: "3",
        title: "Macarrão a Bolonhesa",
        image: "https://areademulher.r7.com/wp-content/uploads/2022/04/macarrao-a-bolonhesa-receita-simples-e-facil-de-fazer.jpeg"
    )
]

struct FavoritesView: View {
    @State private var searchText = "Pesquisar"
    
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
                        .position(x:40, y:90)
                        .frame(width: 75, height: 75)
                    
                        .foregroundColor(Color.white)
                        .colorInvert()
                        .padding(.vertical, 150)
                        .padding(.horizontal, 68)
//                        .navigationTitle("")
//                        .searchable(text: $searchText)

                        VStack {
                            ScrollView{

                            ForEach(sampleDataRecipe) { recipe in
                                RecipeView(title: recipe.title!, image: recipe.image!)
                                Spacer()
                            }
                            
                            .padding(.horizontal, 68)
                            
                            .listRowSeparator(.hidden, edges: .all)
                          
                        }
                        
                        
                    }
                        .padding(.vertical, -35)
                    
                    
                    
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
