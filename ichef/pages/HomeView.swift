//
//  HomeView.swift
//  ichef
//
//  Created by Student13 on 31/10/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {

        ScrollView{
            ZStack {
                Rectangle()
                    .frame(width: 500, height: .infinity)
                    .foregroundColor(Color("Background"))
                    .ignoresSafeArea()
                
                
                VStack{
                    Image("Logo_Sem_Slogan")
                        .resizable()
                        .frame(width: 75, height: 75, alignment: .topLeading)
                        .foregroundColor(Color.white)
                        .colorInvert()
                    
                    RecipeTitleView(title: "Macarrão ao molho branco", time: 30, portions: 10, difficulty: "Fácil")
                        .padding(.horizontal, 65)
                    
                    TextFieldView(title: "Ingredientes")
                        .padding(.horizontal, 65)
                    
                    IngredientList(ingredients: test_ingredients)
                    
                    TextFieldView(title: "Modo de preparo")
                        .padding(.horizontal, 65)
                    
                    PreparationStepListView(steps: test_steps)
                        .padding(.horizontal, 35)
                    
                    
                    MonitorView()
                    
                    
                }
            }
        }
        
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
