//
//  Mapview.swift
//  MapsIntegration
//
//  Created by Arun Amuri on 28/08/2023.
//

import SwiftUI
import MapKit

struct CustomMapView: View {
    @State var tracking: MapUserTrackingMode = .follow
    @State var location:MKCoordinateRegion = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 25.267410,
                                                                                               longitude: 55.292680),
                                                                span: MKCoordinateSpan(latitudeDelta: 0.1,
                                                                                       longitudeDelta: 0.1))
    
    var body: some View {
        Map(coordinateRegion: $location,
            interactionModes: .all, //zoom, pan, select, drag
            showsUserLocation: true,
            userTrackingMode: $tracking)
    }
    
}

struct Mapview_Previews: PreviewProvider {
    static var previews: some View {
        CustomMapView()
    }
}
