//
//  SwiftUiSwitch.swift
//  SISwitch_Example
//
//  Created by Isaac Akakpo on 10/04/2023.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import Foundation
import SwiftUI

//
//  SwiftUISwitch.swift
//  TelnyxAndroidClient
//
//  Created by Isaac Akakpo on 10/04/2023.
//

import Foundation
import SwiftUI

enum SwitchState {
case isEnabled
case notEnabled
}

struct JCSwitch: View {
    @State private var currentState: SwitchState = .notEnabled
    @State private var switchSize: CGFloat = 50

    let enabledColor: Color
    let disabledColor: Color
    let isChecked: Bool
    let onCheckChanged: (Bool) -> Void

    init(enabledColor: Color = .blue, disabledColor: Color = .gray, size: CGFloat = 50, isChecked: Bool = false, onCheckChanged: @escaping (Bool) -> Void) {
        self.enabledColor = enabledColor
        self.disabledColor = disabledColor
        self.switchSize = size
        self.isChecked = isChecked
        self.onCheckChanged = onCheckChanged
        
        if isChecked {
            self.currentState = .isEnabled
        }
    }

    @available(iOS 15.0, *)
    var body: some View {
        let clickable = Button(action: {
            if currentState == .isEnabled {
                onCheckChanged(false)
                currentState = .notEnabled
            } else {
                onCheckChanged(true)
                currentState = .isEnabled
            }
        }, label: {
            ZStack {
                RoundedRectangle(cornerRadius: switchSize / 2)
                    .fill(currentState == .isEnabled ? enabledColor : disabledColor)
                    .frame(width: switchSize, height: switchSize / 2)
                
                RoundedRectangle(cornerRadius: switchSize / 2)
                    .fill(Color.white)
                    .frame(width: (switchSize / 2) - 3, height: (switchSize / 2) - 3)
                    .padding([.leading],-(switchSize / 2) + 1)
                    .offset(x: currentState == .isEnabled ? 0 : (switchSize / 2) - 1, y: 0)
                
            }
            .overlay(RoundedRectangle(cornerRadius: switchSize / 2)
                        .stroke(currentState == .isEnabled ? enabledColor : disabledColor, lineWidth: 1))
        })
        .buttonStyle(BorderlessButtonStyle())
        .frame(width: switchSize, height: switchSize / 2)
        .padding(3)
        .overlay(RoundedRectangle(cornerRadius: switchSize / 2)
                    .stroke(Color.gray, lineWidth: 1))
        
        return clickable
            .background(.clear)
            .compositingGroup()
            .onHover { hovering in
                switchSize = hovering ? 60 : 50
            }
    }

}

struct ContentView_Previews2: PreviewProvider {
    static var previews: some View {
        JCSwitch(
                        isChecked: true,
                        onCheckChanged: { isOn in
                           //isOn
                        }
                    )
        
    }
}
