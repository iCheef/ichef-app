//
//  MonitorView.swift
//  ichef
//
//  Created by Student13 on 07/11/23.
//

import SwiftUI

struct MonitorView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 12)
                .frame(width: 365, height: 150)
                .foregroundColor(.black.opacity(0.39))
            
            VStack{
                Text("Monitor")
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
            
                
//                Button(action: {
//                    hasIngredient.toggle()
//                    // Aqui você pode adicionar a lógica para adicionar/remover a receita dos favoritos
//                    if hasIngredient {
//                        // Adicione a receita aos favoritos
//                    } else {
//                        // Remova a receita dos favoritos
//                    }
//                })
//                {
//
//                    Image(systemName: hasIngredient ? "checkmark.circle.fill" : "checkmark.circle")
//                        .resizable()
//                        .foregroundColor(hasIngredient ? Color("Laranja") : .gray)
//                        .frame(width: 35, height: 30, alignment: .center)
//                }
            }
        }
    }
}

struct MonitorView_Previews: PreviewProvider {
    static var previews: some View {
        MonitorView()
    }
}
