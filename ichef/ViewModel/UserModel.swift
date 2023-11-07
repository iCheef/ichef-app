//
//  UserModel.swift
//  ichef
//
//  Created by Student13 on 06/11/23.
//

import Foundation

struct UserModel : Decodable, Identifiable {
    var id      : Int?
    var name    : String?
    var image   : String?
    var email   : String?
    var age     : Int?
    var favorites : [ Int? ]
}

//var my user = UserModel(id: 1, name: "João Goulart", image: "", email: "joao123goulart@gmail.com", age: 24, favorites: [1, 3, 4, 5, 7])
