//
//  HomeView.swift
//  ichef
//
//  Created by Student13 on 31/10/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ZStack {
            Color("Background")
                .ignoresSafeArea()
            
            Text("HomeView")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
