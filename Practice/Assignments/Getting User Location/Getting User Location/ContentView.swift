//
//  ContentView.swift
//  Getting User Location
//
//  Created by admin on 7/12/23.
//
import Combine
import SwiftUI

struct ContentView: View {
    
    @StateObject var deviceLocationService = DeviceLocationService.shared
    
    @State var tokens:Set<AnyCancellable> = []
    
    @State var coordinates: (lat:Double, lon:Double) = (0,0)
    
    var body: some View {
        VStack{
            Text("Latitude: \(coordinates.lat)")
                .font(.largeTitle)
            Text("Longitude: \(coordinates.lon)")
                .font(.largeTitle)
        }
        .onAppear{
            observeCoordinatesUpdates()
            observeLocationAccessDenied()
            deviceLocationService.requestLocationUpdates()
        }
    }
    func observeCoordinatesUpdates(){
        deviceLocationService.coordinatesPublisher
            .receive(on: DispatchQueue.main)
            .sink {completion in
                if case .failure(let error) = completion{
                    print(error)
                }
            } receiveValue: { coordinates in
                self.coordinates = (coordinates.latitude,coordinates.longitude)
            }
            .store(in: &tokens)
    }
    
    func observeLocationAccessDenied(){
//        deviceLocationService.deniedLocationAccessPublisher
//            .receive(on: DispatchQueue.main)
//            .sink {
//                print("show some kind of alert to the user")
//            }
//            .store(in: &tokens)
    
}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

