//
//  ContentView.swift
//  LayoutAndGeometry
//
//  Created by Dmitry Sharabin on 21.01.2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { fullView in
            ScrollView {
                ForEach(0..<50) { index in
                    GeometryReader { geo in
                        Text("Row #\(index)")
                            .font(.title)
                            .frame(maxWidth: .infinity)
                            .background(Color(hue: min(1, (geo.frame(in: .global).minY / fullView.size.height) * 0.9), saturation: 1, brightness: 1))
                            .rotation3DEffect(.degrees(geo.frame(in: .global).minY - fullView.size.height / 2) / 5, axis: (x: 0, y: 1, z: 0))
                            .scaleEffect(max(0.5, (geo.frame(in: .global).maxY + fullView.size.height / 2.15) / fullView.size.height - 0.05))
                            .opacity(geo.frame(in: .global).minY <= 200 ? geo.frame(in: .global).minY / 200 - 0.1 : 1)
                    }
                    .frame(height: 40)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
