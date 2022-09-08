//
//  TapMeButtonView.swift
//  HW1_TrafficLight
//
//  Created by Alexander Zubach on 08.09.2022.
//

import SwiftUI

struct NextButtonView: View {
    
    // MARK: - Properties
    
    private let buttonAction: () -> Void
    
    // MARK: - Init
    
    init(buttonAction: @escaping () -> Void) {
        self.buttonAction = buttonAction
    }
    
    // MARK: - Body
    
    var body: some View {
        Button(action: { buttonAction() }) {
            Text("NEXT!").foregroundColor(.white).font(.title)
        }
        .frame(width: 200, height: 50)
        .background(Color.blue)
        .overlay(RoundedRectangle(cornerRadius: 16).stroke(Color.white, lineWidth: 4))
        .cornerRadius(16)
    }
}

struct TapMeButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(.black)
            NextButtonView(buttonAction: { })
        }
    }
}
