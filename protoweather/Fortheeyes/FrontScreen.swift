//
//  FrontScreen.swift
//  protoweather
//
//  Created by Emil Thomas Levin on 10/19/22.
//

import SwiftUI
import CoreLocationUI

struct FrontScreen: View {
    @EnvironmentObject var locationManager: Location
    var body: some View {
        VStack{
            VStack(spacing: 20){
                Text("iOS APP DEMO").bold().font(.title).underline()
                Text("Share your current location to get the best experience")
                    .padding()
            }
            .multilineTextAlignment(.center)
            .padding()
            
            LocationButton(.shareCurrentLocation) {
                locationManager.requestlocation()
            }
            .cornerRadius(30)
            .symbolVariant(.fill)
            .foregroundColor(.white)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .padding()
        
        
    }
}

struct FrontScreen_Previews: PreviewProvider {
    static var previews: some View {
        FrontScreen()
    }
}
