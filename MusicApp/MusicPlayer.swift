//
//  MusicPlayer.swift
//  MusicApp
//
//  Created by Abdelrahman Mohamed on 28.09.2020.
//

import SwiftUI

struct MusicPlayer: View {
    
    // MARK: - PROPERTIES
    
    let namespace: Namespace.ID
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
            Image("coverExtra")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .cornerRadius(16)
                .padding()
                .matchedGeometryEffect(id: "animation", in: namespace)
            
            HStack {
                VStack(alignment: .leading) {
                    Text("Assassin's Creed Valhalla: Out of the North")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    Text("Obada")
                        .font(.title)
                        .fontWeight(.light)
                        .opacity(0.5)
                        .foregroundColor(.white)
                }
                .padding()
                Spacer()
            }
            
            HStack {
                
                Image(systemName: "backward.fill")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
                    
                
                Image(systemName: "play.fill")
                    .foregroundColor(.white)
                    .font(.system(size: 50))
                    .padding([.leading, .trailing], 75)
                
                Image(systemName: "forward.fill")
                    .foregroundColor(.white)
                    .font(.system(size: 30))
            }
            
            Spacer()
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(.systemPink))
    }
}

struct MusicPlayer_Previews: PreviewProvider {
    
    static var previews: some View {
        MusicPlayer(namespace: Namespace.init().wrappedValue)
    }
}
