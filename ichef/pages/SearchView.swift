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
    var nota    : Int?
}

var sampleDataRecipeType: [ SearchRecipe ] =
[
    SearchRecipe(
        id: "1",
        title: "Massas",
        image: "https://static.wixstatic.com/media/4798a8_0ff820b2a2ed4f25b99dd853ac8ace77~mv2.jpg/v1/fill/w_640,h_428,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/4798a8_0ff820b2a2ed4f25b99dd853ac8ace77~mv2.jpg"
    ),
    SearchRecipe(
        id: "2",
        title: "Carnes",
        image: "https://supermercadosrondon.com.br/guiadecarnes/images/postagens/as_7_melhores_carnes_para_churrasco_21-05-2019.jpg"
    ),
    SearchRecipe(
        id: "3",
        title: "Sopas",
        image: "https://institucional.hortifruti.com.br/wp-content/uploads/2015/06/sopa-de-inverno.jpg"
    )
]

struct SearchView: View {
    @State private var searchText = ""
    @State  var type = ""
    
    var body: some View {
        
        NavigationView {
            
            ZStack {
                Color("Background")
                    .ignoresSafeArea()
                
                VStack {
                    
                    Image("Logo_Sem_Slogan")
                        .resizable()
                        .frame(width: 75, height: 75, alignment: .topLeading)
                        .foregroundColor(Color.white)
                        .colorInvert()
                    
                    
                    VStack {
                        ScrollView{
                            ForEach(sampleDataRecipeType) { recipe in
                                NavigationLink(destination: SearchRecipeView(type: recipe.title!)){
                                    VStack {
                                        
                                        RecipeTypeView(title: recipe.title!, image: recipe.image!)
                                        Spacer()
                                    }.multilineTextAlignment(.leading)
                                }
                                .padding(.horizontal, 10)
                                .listRowSeparator(.hidden, edges: .all)
                            }
                        }
                        .padding(.vertical, 35)
                    }
                }.padding(.top,30)
            }}}
    
}
struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

