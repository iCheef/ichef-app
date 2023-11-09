//
//  RecipeTitleView.swift
//  ichef
//
//  Created by Student13 on 07/11/23.
//

import SwiftUI

struct RecipeTitleView: View {
    @State public var title      : String
    @State public var time       : String
    @State public var portions   : String
    @State public var difficulty : String
    
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 12)
                .frame(height: 75)
                .foregroundColor(.black.opacity(0.39))
            
            VStack {
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
                    
                    Text(time != "" ? "\(time) Minutos" : "")
                        .font(.title2)
                        .foregroundColor(Color("Laranja"))
                    
                    Spacer()
                    
                    Text(portions != "" ? "\(portions) Porções" : "")
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
        RecipeTitleView(title: "Macarrão ao molho branco", time: "10", portions: "30", difficulty: "facil")
    }
}
