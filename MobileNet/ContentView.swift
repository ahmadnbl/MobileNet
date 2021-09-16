//
//  ContentView.swift
//  MobileNet
//
//  Created by Ahmad Nabili on 16/09/21.
//

import CoreTelephony
import SwiftUI

struct ContentView: View {
    let noAvailability = CTTelephonyNetworkInfo()
        .serviceSubscriberCellularProviders?
        .values
        .compactMap { $0.mobileCountryCode }
        .isEmpty ?? false
    
    var body: some View {
        HStack {
            VStack(spacing: 8){
                Spacer()
                Text("Sim Card: \(noAvailability ? "Not Detected" : "Detected")")
            }
            Spacer()
        }.padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
