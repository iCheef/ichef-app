//
//  TextFieldView.swift
//  ichef
//
//  Created by Student13 on 07/11/23.
//

import SwiftUI

struct TextFieldView: View {
    @State public var title: String
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 12)
                .frame(height: 55)
                .foregroundColor(.black.opacity(0.39))
            
            HStack{
                Text(title)
                    .font(.title)
                    
                    .foregroundColor(.white)
                    .padding()
                Spacer()
                
                
            }

        }
    }
}

struct TextFieldView_Previews: PreviewProvider {
    static var previews: some View {
        TextFieldView(title: "Ingredientes")
    }
}
