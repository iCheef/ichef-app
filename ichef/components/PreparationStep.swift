//
//  PreparationStep.swift
//  ichef
//
//  Created by Student13 on 07/11/23.
//

import SwiftUI

struct PreparationStep: View, Identifiable {
    
    @State public var id: Int
    @State public var stepNumber: Int
    @State public var stepDescription: String
    @State public var isActive = false
    @State public var textIsDisabled = false
    
    var body: some View {
        VStack {
            HStack{
                Spacer()
                ZStack{
                    Circle()
                        .fill(Color("Laranja"))
                        .frame(width: 50, height: 50)
                    Text(String(stepNumber))
                        .font(.title2)
                        .bold()
                        .foregroundColor(.white)
                }
                Spacer()
                Spacer()
                
                
                Text("Passo \(stepNumber)")
                    .bold()
                    .font(.title2)
                    .foregroundColor(.white)
                
                Spacer()
                Spacer()
                
                
                Button(action: {
                    
                    isActive.toggle()
                    // Aqui você pode adicionar a lógica para adicionar/remover a receita dos favoritos
                    if isActive {
                        textIsDisabled = true
                    } else {
                        textIsDisabled = false

                    }
                })
                {
                    Image(systemName: isActive ? "arrow.down" : "arrow.up")
                        .resizable()
                        .foregroundColor(isActive ? Color("Laranja") : .gray)
                        .frame(width: 20, height: 20, alignment: .center)
                }
                
                
                
                
                
                Spacer()
                
            }
            Divider()
            if(textIsDisabled) {
                Text(stepDescription)
                    .disabled(textIsDisabled)
                    .foregroundColor(Color("Laranja"))
                    .bold()
                    .padding(.horizontal, 50)
            }
            
        }
        
    }
}


struct PreparationStep_Previews: PreviewProvider {
    static var previews: some View {
        PreparationStep(id: 1, stepNumber: 1, stepDescription: "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut ultricies risus a turpis hendrerit, eleifend scelerisque tortor malesuada. In auctor interdum elit non finibus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut aliquet lacus sed arcu finibus, a ullamcorper erat pulvinar. Fusce eros ex, lacinia in lorem at, iaculis posuere dui. Praesent id imperdiet sapien, eu semper ipsum. Sed commodo eros sed mattis laoreet. ")
    }
}
