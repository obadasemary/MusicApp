//
//  ContentView.swift
//  MusicApp
//
//  Created by Abdelrahman Mohamed on 28.09.2020.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    
    @Namespace private var ns
    @State private var showAlbum: Bool = false
    
    // MARK: - BODY
    
    var body: some View {
        VStack {
//            MusicPlayer()
            Spacer()
//            MusicPlayerBar()
            
            if showAlbum {
                MusicPlayer(namespace: ns)
            } else {
                MusicPlayerBar(namespace: ns)
            }
        }
        .onTapGesture(count: 1, perform: {
            withAnimation(.spring()) {
                
                self.showAlbum.toggle()
            }
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
