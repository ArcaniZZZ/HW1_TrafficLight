//
//  TrafficLightView.swift
//  HW1_TrafficLight
//
//  Created by Alexander Zubach on 08.09.2022.
//

import SwiftUI

struct TrafficLightView: View {
    
    // MARK: - Properties
    
    private let color: Color
    
    // MARK: - Init
    
    init(color: Color) {
        self.color = color
    }
    
    // MARK: - Body

    var body: some View {
        Circle()
            .foregroundColor(color)
            .frame(width: 120, height: 120)
            .overlay(Circle().stroke(Color.white, lineWidth: 4))
    }
}

struct TrafficLightView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightView(color: .red)
    }
}
