//
//  ProfileView.swift
//  ichef
//
//  Created by Student13 on 31/10/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        ZStack {
            Rectangle()
                .frame(width: 500, height: 1000)
                .foregroundColor(Color("Background"))
                .ignoresSafeArea()
            Text("ProfileView")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
