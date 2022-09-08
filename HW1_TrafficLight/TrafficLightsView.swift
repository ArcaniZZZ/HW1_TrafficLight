//
//  ContentView.swift
//  HW1_TrafficLight
//
//  Created by Alexander Zubach on 08.09.2022.
//

import SwiftUI

struct TrafficLightsView: View {
    
    // MARK: - Properties
    
    @State private var isRedOn = false
    @State private var isYellowOn = false
    @State private var isGreenOn = false
    
    private let redLight = TrafficLightView(color: .red)
    private let yellowLight = TrafficLightView(color: .yellow)
    private let greenLight = TrafficLightView(color: .green)
    
    // MARK: - Body
    
    var body: some View {
        ZStack {
            Color(.black).ignoresSafeArea()
            VStack {
                redLight.opacity(isRedOn ? 1 : 0.2).padding(.bottom)
                yellowLight.opacity(isYellowOn ? 1 : 0.2).padding(.bottom)
                greenLight.opacity(isGreenOn ? 1 : 0.2)
                Spacer()
                NextButtonView(buttonAction: didTapNextButton)
            }
        }
    }
    
    // MARK: - Private Methods
    
    private func didTapNextButton() {
        if isRedOn {
            isRedOn.toggle()
            isYellowOn = true
        } else if isYellowOn {
            isYellowOn.toggle()
            isGreenOn = true
        } else {
            isGreenOn = false
            isRedOn.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        TrafficLightsView()
    }
}
