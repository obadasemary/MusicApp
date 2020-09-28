//
//  ContentView.swift
//  MusicApp
//
//  Created by Abdelrahman Mohamed on 28.09.2020.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            MusicPlayer()
            Spacer()
            MusicPlayerBar()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
