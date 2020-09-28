//
//  MusicPlayerBar.swift
//  MusicApp
//
//  Created by Abdelrahman Mohamed on 28.09.2020.
//

import SwiftUI

struct MusicPlayerBar: View {
    
    // MARK: - PROPERTIES
    
    
    // MARK: - BODY
    
    var body: some View {
        HStack {
            Image("cover")
                .resizable()
                .frame(width: 50, height: 50)
                .cornerRadius(4)
                .padding()
            
            Text("Valhalla")
                .font(.headline)
            
            Spacer()
            
            Image(systemName: "play.fill")
            Image(systemName: "forward.fill")
                .padding(.trailing, 10)
        }
        .frame(maxWidth: .infinity, maxHeight: 60)
        .background(Color(.lightGray))
    }
}

struct MusicPlayerBar_Previews: PreviewProvider {
    static var previews: some View {
        MusicPlayerBar()
    }
}
