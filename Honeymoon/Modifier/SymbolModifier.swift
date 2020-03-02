//
//  SymbolModifier.swift
//  Honeymoon
//
//  Created by Zerone on 02/03/20.
//  Copyright © 2020 thobio. All rights reserved.
//

import SwiftUI

struct SymbolModifier: ViewModifier {
    func body(content: Content) -> some View {
        content.font(.system(size: 100.0)).foregroundColor(Color.white)
        .shadow(color: Color(red: 0, green: 0, blue: 0).opacity(0.2), radius: 12, x: 0, y: 0)

    }
     
}
