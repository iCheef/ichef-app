//
//  RecipeTypeView.swift
//  ichef
//
//  Created by Student13 on 31/10/23.
//

import SwiftUI

struct RecipeView: View {
    @State public var title : String
    @State public var image : String
    @State private var isFavorited = false
    static var recipeTypes : [ SearchRecipe ] = sampleDataRecipeType
    var body: some View {
        NavigationStack {
            ZStack{
                RoundedRectangle(cornerRadius: 12)
                    .frame(height: 75)
                    .foregroundColor(.black.opacity(0.39))
                
                
                HStack {
                    AsyncImage(url: URL(string: image))
                        .scaledToFill()
                    
                        .frame(width: 55, height: 55)
                        .clipped()
                        .cornerRadius(.infinity)
                        .padding()
                    
                    Spacer()
                    Text(title)
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                    .padding()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                        Spacer()
                    Button(action: {
                                            isFavorited.toggle()
                                            // Aqui você pode adicionar a lógica para adicionar/remover a receita dos favoritos
                                            if isFavorited {
                                                // Adicione a receita aos favoritos
                                            } else {
                                                // Remova a receita dos favoritos
                                            }
                                        }) {
                                            Image(systemName: isFavorited ? "heart.fill" : "heart")
                                                .resizable()
                                                .foregroundColor(isFavorited ? .red : .gray)
                                                .frame(width: 35, height: 30, alignment: .center)
                                        }
                    Spacer()
                }
            }
        }
    }
}

struct RecipeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeView(title: "Massas", image: "https://static.wixstatic.com/media/4798a8_0ff820b2a2ed4f25b99dd853ac8ace77~mv2.jpg/v1/fill/w_640,h_428,al_c,q_80,usm_0.66_1.00_0.01,enc_auto/4798a8_0ff820b2a2ed4f25b99dd853ac8ace77~mv2.jpg")
    }
}