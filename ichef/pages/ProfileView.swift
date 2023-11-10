//
//  ProfileView.swift
//  ichef
//
//  Created by Student13 on 31/10/23.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        VStack{
            NavigationStack {
                ZStack {
                    Color("Background")
                        .ignoresSafeArea()
                    
                    
                    VStack{
                        
                        Image("Logo_Sem_Slogan")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 85, height: 85, alignment: .topLeading)
                            .colorInvert()
                            .padding(.vertical, -330)
                        
                        
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .foregroundColor(.orange)
                            .frame(width: 100, height: 100)
                            .padding(.vertical, -250)
                        
                        
                        Text("Nome Completo")
                            .foregroundColor(.white)
                            .font(.title)
                            .frame(width: 200, height: 400, alignment: .center)
                            .padding(.vertical, -280)
                        
                        Text("nomesobrenome@email.com")
                            .font(.title2)
                            .padding(.vertical, -60)
                    }
                    
                    
                    
                }
                
                
                
                
            }
        }
        
        
        
    }
    
    
    struct ProfileView_Previews: PreviewProvider {
        static var previews: some View {
            ProfileView()
        }
    }
    
}
