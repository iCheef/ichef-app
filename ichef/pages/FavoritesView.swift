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
        title: "Pizza marguerita",
        image: "https://static.wixstatic.com/media/4798a8_0ff820b2a2ed4f25b99dd853ac8ace77~mv2.jpg/v1/fill/w_640,h_428,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/4798a8_0ff820b2a2ed4f25b99dd853ac8ace77~mv2.jpg"
    ),
    SearchRecipe(
        id: "2",
        title: "Lasanha de carne",
        image: "https://supermercadosrondon.com.br/guiadecarnes/images/postagens/as_7_melhores_carnes_para_churrasco_21-05-2019.jpg"
    ),
    SearchRecipe(
        id: "3",
        title: "Macarrão a bolonhesa",
        image: "https://static.wixstatic.com/media/4798a8_0ff820b2a2ed4f25b99dd853ac8ace77~mv2.jpg/v1/fill/w_640,h_428,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/4798a8_0ff820b2a2ed4f25b99dd853ac8ace77~mv2.jpg"
    )
]

struct FavoritesView: View {
    @State private var searchText = ""
    
    var body: some View {
        NavigationStack {
            
            ZStack {
                Rectangle()
                    .frame(width: 500, height: 1000)
                    .foregroundColor(Color("Background"))
                    .ignoresSafeArea()
                
                VStack {
                                        Spacer()
                                        Spacer()
                                        Spacer()
                    
                    Image("Logo_Sem_Slogan")
                        .resizable()
                        .frame(width: 75, height: 75, alignment: .topLeading)
                        .foregroundColor(Color.white)
                        .colorInvert()
                        .padding(.vertical, 50)
                        .padding(.horizontal, 68)
                        .navigationTitle("Pesquisar")
                        .searchable(text: $searchText)
                    ScrollView{
                        VStack {
                            
                            ForEach(sampleDataRecipe) { recipe in
                                RecipeView(title: recipe.title!, image: recipe.image!)
                                Spacer()
                            }
//                            .padding(.vertical, 50)
                            .padding(.horizontal, 68)
                            
                            .listRowSeparator(.hidden, edges: .all)
//                            Spacer()
//                            Spacer()
//                            Spacer()
//                            Spacer()
                            
                        }
                        
                    }.padding(.vertical, 35)

                }
            }
        }
        
        
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
        FavoritesView()
    }
}
