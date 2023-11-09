//
//  HomeView.swift
//  ichef
//
//  Created by Student13 on 31/10/23.
//

import SwiftUI

struct HomeView: View {
    
    @State public var hasRecipe = true
    
    var body: some View {
        
        if (hasRecipe) {
            ScrollView{
                ZStack {
                    Rectangle()
                        .frame(width: 500)
                        .foregroundColor(Color("Background"))
                        .ignoresSafeArea()
                    
                    VStack{
                        Image("Logo_Sem_Slogan")
                            .resizable()
                            .frame(width: 85, height: 85)
                            .colorInvert()
                        
//                        RecipeTitleView(title: "Macarrão ao molho branco", time: "30", portions: "10", difficulty: "Fácil")
//                            .padding(.horizontal, 75)
                        
                        TextFieldView(title: "Ingredientes")
                            .padding(.horizontal, 75)
                        
                        IngredientList(ingredients: test_ingredients)
                        
                        TextFieldView(title: "Modo de preparo")
                            .padding(.horizontal, 75)
                        
                        PreparationStepListView(steps: test_steps)
                            .padding(.horizontal, 35)
                        
                        MonitorView()
                        
                    }
                    
                }
            }
            .background(Color("Background"))

        }
        else if(!hasRecipe) {
            ScrollView{
                ZStack {
                    Rectangle()
                        .frame(width: 500)
                        .foregroundColor(Color("Background"))
                        .ignoresSafeArea()
                    
                    VStack{
                        Image("Logo_Sem_Slogan")
                            .resizable()
                            .frame(width: 85, height: 85)
                            .colorInvert()
                        
                        RecipeTitleView(title: "Escolha uma receita", time: "", portions: "", difficulty: "")
                            .padding(.horizontal, 75)
                        
                        TextFieldView(title: "Ingredientes")
                            .padding(.horizontal, 75)
                        
                        //IngredientList(ingredients: test_ingredients)
                        
                        TextFieldView(title: "Modo de preparo")
                            .padding(.horizontal, 75)
                        
//                        PreparationStepListView(steps: test_steps)
//                            .padding(.horizontal, 35)
                        
                        MonitorView()
                            .padding(.horizontal, 35)
                        
                    }
                    
                }
            }
            .background(Color("Background"))
        }
            
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
