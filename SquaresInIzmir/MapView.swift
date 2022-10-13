//
//  MapView.swift
//  SquaresInIzmir
//
//  Created by Murat Baykor on 13.10.2022.
//

import SwiftUI
import MapKit

struct MapView: View {

    @State var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 38.42684537043673, longitude: 27.13311982150546), span: MKCoordinateSpan(latitudeDelta: 0.02, longitudeDelta: 0.02))
    
    var body: some View {
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
