//
//  ContentView.swift
//  MizaMajster
//
//  Created by Zak Jeglic on 29/09/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color.blue
                .ignoresSafeArea()
            Text("ContenvView")
                .foregroundColor(.white)
                .font(.system(size:20))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
