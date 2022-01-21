//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Dmitry Sharabin on 21.01.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Text("Live long and prosper")
//            .frame(width: 300, height: 300, alignment: .topLeading)
//            .offset(x: 50, y: 50)
        
//        HStack(alignment: .lastTextBaseline) {
//            Text("Live")
//                .font(.caption)
//            Text("long")
//            Text("and")
//                .font(.title)
//            Text("prosper")
//                .font(.largeTitle)
//        }
        
//        VStack(alignment: .leading) {
//            Text("Hello, world!")
////                .offset(x: -100)
//                .alignmentGuide(.leading) { d in
//                    d[.trailing]
//                }
//            Text("This is a longer line of text")
//        }
//        .background(.red)
//        .frame(width: 400, height: 400)
//        .background(.blue)
        
        VStack(alignment: .leading) {
            ForEach(0..<10) { position in
                Text("Number \(position)")
                    .alignmentGuide(.leading) { _ in
                        Double(position) * -10
                    }
            }
        }
        .background(.red)
        .frame(width: 400, height: 400)
        .background(.blue)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
