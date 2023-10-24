//
//  SplashScreen.swift
//  MizaMajster
//
//  Created by Zak Jeglic on 29/09/2023.
//

import SwiftUI

struct SplashScreen: View {
    @State private var isActive = false
    @State private var size = 0.8
    @State private var opacity = 0.5
    @State var someColor = #colorLiteral(red: 0.09803921729, green: 0.09803921729, blue: 0.09803921729, alpha: 1)
    var body: some View {
        if isActive{
            	ContentView()
              }
        else{
            
            ZStack{
                Color(someColor).ignoresSafeArea()
                VStack{
                    VStack{
                        Image("LogoS")
                            .resizable()
                            .frame(height:200)
                            .frame(width: 380)
                            .padding(.bottom, 50)
                    }
                }
                .scaleEffect(size)
                .opacity(opacity)
                .onAppear{
                    withAnimation(.easeIn(duration: 1.2)){
                        self.size=0.9
                        self.opacity=1
                    }
                }
            }
            .onAppear{
                DispatchQueue.main.asyncAfter(deadline: .now() + 2.0 ) {
                    withAnimation{
                        self.isActive = true
                    }
                }
                }
            
            
        }        }
       
}

struct SplashScreen_Previews: PreviewProvider {
    static var previews: some View {
        SplashScreen()
    }
}
