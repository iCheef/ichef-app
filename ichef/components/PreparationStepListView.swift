//
//  IngredientList.swift
//  ichef
//
//  Created by Student13 on 07/11/23.
//

import SwiftUI

var test_steps = [
    PreparationStep(id: 1, stepNumber: 1, stepDescription: "Cozinhar o macarrão"),
    PreparationStep(id: 2, stepNumber: 2, stepDescription: "Fazer Molho bechamel"),
    PreparationStep(id: 3, stepNumber: 3, stepDescription: "Colocar em uma frigideira o macarrão e o molho"),
    PreparationStep(id: 4, stepNumber: 4, stepDescription: "Adicionar proteína de preferência, sugestão: bacon")
]


struct PreparationStepListView: View {
    @State public var steps: [ PreparationStep ]
    var body: some View {
        VStack{
            ScrollView(){
                VStack{
                    ForEach(test_steps) { step in
                        PreparationStep(id: step.id, stepNumber: step.stepNumber, stepDescription: step.stepDescription)
                    }
                }
            }
        }.frame(height: 150)
    }
}

struct PreparationStepListView_Previews: PreviewProvider {
    
    static var previews: some View {
        PreparationStepListView(steps: test_steps)
    }
}
