//
//  UserModel.swift
//  ichef
//
//  Created by Student13 on 06/11/23.
//

import Foundation

struct RecipeModel {
    var id              : String?
    var name            : String?
    var steps           : [ PreparationStep ]?
    var ingredients     : [ IngredientCardView ]?
    var time            : String?
    var portions        : String?
    var difficulty      : String?
}

