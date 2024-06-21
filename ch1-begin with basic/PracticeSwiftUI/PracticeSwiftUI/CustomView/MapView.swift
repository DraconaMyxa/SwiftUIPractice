//
//  MapView.swift
//  PracticeSwiftUI
//
//  Created by May Myxa on 21/6/2567 BE.
//

import SwiftUI
import MapKit

struct MapView: View {
    var body: some View {
        // for iOS 15 - 16
        @State var ios15Region = region
        
        if #available(iOS 17.0, *) {
            Map(initialPosition: .region(region))
        } else {
            Map(coordinateRegion: $ios15Region)
        }
    }
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
            span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
        )
    }
}

#Preview {
    MapView()
}
