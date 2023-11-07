//
//  IngredientList.swift
//  ichef
//
//  Created by Student13 on 07/11/23.
//

import SwiftUI

var test_ingredients = [
    IngredientCardView(id: 1, title: "Macarrão", quantity: "300g"),
    IngredientCardView(id: 2, title: "Leite", quantity: "1/2L"),
    IngredientCardView(id: 3, title: "Margarina", quantity: "1 Colher"),
    IngredientCardView(id: 4, title: "Queijo ralado", quantity: "300g")
]


struct IngredientList: View {
    @State public var ingredients: [ IngredientCardView]
    var body: some View {
        VStack{
            ScrollView(.horizontal){
                HStack{
                    ForEach(ingredients) { ingredient in
                        IngredientCardView(id: ingredient.id, title: ingredient.title, quantity: ingredient.quantity)
                    }
                }
            }
        }.frame(width: 370, height: 150)
    }
}

struct IngredientList_Previews: PreviewProvider {
    
    static var previews: some View {
        IngredientList(ingredients: test_ingredients)
    }
}
