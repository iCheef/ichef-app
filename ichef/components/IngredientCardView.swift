//
//  IngredientCardView.swift
//  ichef
//
//  Created by Student13 on 07/11/23.
//

import SwiftUI

struct IngredientCardView: View, Identifiable {
    @State public var id        : Int
    @State public var title     : String
    @State public var quantity  : String
    @State private var hasIngredient = false
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 12)
                .frame(width: 120, height: 150)
                .foregroundColor(.black.opacity(0.39))
            
            VStack{
                Text(title)
                    .font(.title2)
                    .foregroundColor(.white)
                
                Text(quantity)
                    .font(.title2)
                    .foregroundColor(Color("Laranja"))
                
                Button(action: {
                    hasIngredient.toggle()
                    // Aqui você pode adicionar a lógica para adicionar/remover a receita dos favoritos
                    if hasIngredient {
                        // Adicione a receita aos favoritos
                    } else {
                        // Remova a receita dos favoritos
                    }
                })
                {
                    
                    Image(systemName: hasIngredient ? "checkmark.circle.fill" : "checkmark.circle")
                        .resizable()
                        .foregroundColor(hasIngredient ? Color("Laranja") : .gray)
                        .frame(width: 35, height: 30, alignment: .center)
                }
            }
        }
    }
}

struct IngredientCardView_Previews: PreviewProvider {
    static var previews: some View {
        IngredientCardView(id: 1, title: "Macarrão", quantity: "300g")
    }
}
