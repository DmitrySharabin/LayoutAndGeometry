//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Dmitry Sharabin on 21.01.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Text("Hello, world!")
////            .background(.red)
//            .position(x: 100, y: 100)
//            .background(.red)
        
        Text("Hello, world!")
            .background(.red)
            .offset(x: 100, y: 100)
//            .background(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
