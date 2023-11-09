//
//  NavBar.swift
//  ichef
//
//  Created by Student13 on 31/10/23.
//

import SwiftUI

// Barra de navagação
struct NavBar: View {
    var body: some View {
        ZStack{
            TabView {
                    HomeView()
                        .tabItem {
                            Image(systemName: "house")
                                .resizable()
                                .foregroundStyle(.red, .red)
                                .frame(width: 200, height: 200, alignment: .center)
                    }
                    SearchView()
                        .tabItem {
                            Image(systemName: "magnifyingglass")
                                .resizable()
                                .foregroundStyle(.red, .red)
                                .frame(width: 200, height: 200, alignment: .center)
                    }
                    FavoritesView()
                        .tabItem {
                            Image(systemName: "heart.fill")
                                .resizable()
                                .foregroundStyle(.red, .red)
                                .frame(width: 200, height: 200, alignment: .center)
                    }
                    ProfileView()
                        .tabItem {
                            Image(systemName: "person.fill")
                                .resizable()
                                .foregroundStyle(.red, .red)
                                .frame(width: 200, height: 200, alignment: .center)
                    }
                }
        }
        .background(Color(""))
        
    }
}

struct NavBar_Previews: PreviewProvider {
    static var previews: some View {
        NavBar()
    }
}
