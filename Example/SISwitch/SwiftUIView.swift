//
//  SwiftUIView.swift
//  SISwitch_Example
//
//  Created by Isaac Akakpo on 12/04/2023.
//  Copyright © 2023 CocoaPods. All rights reserved.
//

import SwiftUI
import SISwitch

struct SwiftUIView: View {
    var body: some View {
        SCSwitch(onCheckChanged: {bol in
            
        })
        //Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct SwiftUIView_Previews: PreviewProvider {
    static var previews: some View {
        SwiftUIView()
    }
}
