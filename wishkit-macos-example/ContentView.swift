//
//  ContentView.swift
//  wishkit-macos-example
//
//  Created by Martin Lasek on 3/4/23.
//  Copyright © 2023 Martin Lasek. All rights reserved.
//

import SwiftUI
import WishKit

struct ContentView: View {

    init() {
        WishKit.configure(with: "0269EE13-3390-4003-9AEA-A69ADACFAE7C")
    }

    var body: some View {
        WishKit.view
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
