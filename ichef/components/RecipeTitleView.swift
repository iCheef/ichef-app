//
//  RecipeTitleView.swift
//  ichef
//
//  Created by Student13 on 07/11/23.
//

import SwiftUI

struct RecipeTitleView: View {
    @State public var title     : String
    @State public var time      : Int
    @State public var portions  : Int
    @State public var difficulty : String
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 12)
                .frame(height: 75)
                .foregroundColor(.black.opacity(0.39))
            
            VStack{
                Text(title)
                    .font(.title)
                    .bold()
                    .foregroundColor(.white)
                
                HStack {
                    Text(difficulty)
                        .font(.title2)
                        .foregroundColor(Color("Laranja"))
                        .padding(.horizontal)
                    Spacer()
                    Text("\(portions) Porções")
                        .font(.title2)
                        .foregroundColor(Color("Laranja"))
                    Spacer()
                    Text("30 Porções")
                        .font(.title2)
                        .foregroundColor(Color("Laranja"))
                        .padding(.horizontal)
                }
                
                
            }
            
            
        }
        
    }
}

struct RecipeTitleView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTitleView(title: "Macarrão ao molho branco", time: 30, portions: 10, difficulty: "Fácil")
    }
}
