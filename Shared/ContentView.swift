//
//  ContentView.swift
//  Shared
//
//  Created by Noslin on 25/03/2022.
//

import SwiftUI

struct ContentView: View {
   // @State private var isPlaying: Bool = false
    @State private var compteur: Int = 0
    @State private var compteur1: Int = 0
    @State private var compteur2: Int = 0


    var body: some View {

       
       
        VStack {
            Spacer()
            VStack{
                Text("\(compteur+compteur1+compteur2)")
                    .foregroundColor(.black)
                    .fontWeight(.bold)
                    .font(.system(size: 150))
                
            }
          
            Spacer()
            HStack{
                  
                    ActionButton(compteur: $compteur, color: .red)
                   ActionButton(compteur: $compteur1, color: .blue)
                   ActionButton(compteur: $compteur2, color: .green)
                
            }
            
        }
     
        
    }
  

}

struct ActionButton: View {
    @Binding  var compteur: Int
    var color : Color
    var body: some View{
        
        Button(action: {
        self.compteur += 1
                    
        }){
            Image(systemName: "circle.fill")
                .font(.system(size:100))
                .foregroundColor(color)
                .overlay(
                    Text("\(compteur)")
                        .foregroundColor(.white)
                        .font(.system(size: 50))
                )
        }
    }
}


struct ContentView_Previews: PreviewProvider {
   
    static var previews: some View {
        ContentView()
    }
}
