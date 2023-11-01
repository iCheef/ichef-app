//
//  RecipeTypeView.swift
//  ichef
//
//  Created by Student13 on 31/10/23.
//

import SwiftUI

struct RecipeTypeView: View {
    @State public var title : String
    @State public var image : String
    static var recipeTypes : [ SearchRecipe ] = sampleData
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 12)
                .frame(height: 75)
                .foregroundColor(.black.opacity(0.39))
                
                
            HStack {
                Spacer()
                
                Text(title)
                    .font(.title)
                    .bold()
                
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                Spacer()
                
                Image(systemName: "heart.fill")
                    .resizable()
                    .foregroundStyle(.gray, .red)
                    .frame(width: 35, height: 30, alignment: .center)
                
                Spacer()
            }
        }
    }
}

struct RecipeTypeView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeTypeView(title: "Massas", image: "TESTE")
    }
}
