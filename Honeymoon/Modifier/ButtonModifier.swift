//
//  ButtonModifier.swift
//  Honeymoon
//
//  Created by Zerone on 02/03/20.
//  Copyright © 2020 thobio. All rights reserved.
//

import SwiftUI

struct ButtonModifier: ViewModifier {
    func body(content:Content) -> some View {
        content.font(.headline).padding().frame(minWidth:0,maxWidth: .infinity)
        .background(Capsule().fill(Color.pink))
        .foregroundColor(Color.white)
    }
}

