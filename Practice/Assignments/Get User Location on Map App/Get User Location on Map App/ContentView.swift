//
//  ContentView.swift
//  Get User Location on Map App
//
//  Created by admin on 7/13/23.
//

import SwiftUI
import MapKit

struct ContentView: View {
    
    @StateObject private var viewModal = ContentViewModel()
    
    var body: some View {
        Map(coordinateRegion: $viewModal.region, showsUserLocation: true)
            .ignoresSafeArea()
            .accentColor(Color(.systemRed))
            .onAppear{
                viewModal.checkIfLocationSErviceManagerIsEnabled()
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

