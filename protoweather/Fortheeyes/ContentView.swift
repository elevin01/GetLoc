//
//  ContentView.swift
//  protoweather
//
//  Created by Emil Thomas Levin on 10/19/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var locationManager = Location()
    var body: some View {
        VStack {
            if let location = locationManager.space {
                Text("Your coordinates are: \(location.longitude), \(location.latitude)")
            }else {
                if locationManager.loadingscreen {
                        ProgressView()
                } else {
                    FrontScreen().environmentObject(locationManager)
                }
        }
        }
        .background(Color("AccentColor"))
        .preferredColorScheme(.dark)
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
