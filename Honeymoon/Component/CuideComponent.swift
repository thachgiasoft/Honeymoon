//
//  CuideComponent.swift
//  Honeymoon
//
//  Created by Zerone on 02/03/20.
//  Copyright © 2020 thobio. All rights reserved.
//

import SwiftUI

struct CuideComponent: View {
    
    var title:String
    var subtitle:String
    var description:String
    var icon:String
    
    var body: some View {
        HStack(alignment: .center, spacing: 20) {
            Image(systemName:icon).font(.largeTitle).foregroundColor(Color.pink)
            VStack(alignment: .leading, spacing: 4){
                HStack {
                    Text(title.uppercased()).font(.title).fontWeight(.heavy)
                    Spacer()
                    Text(subtitle.uppercased()).font(.footnote).fontWeight(.heavy).foregroundColor(Color.pink)
                }
                Divider().padding(.bottom,4)
                Text(description).font(.footnote).foregroundColor(.secondary).fixedSize(horizontal: false, vertical: true)
            }
        }
    }
}

struct CuideComponent_Previews: PreviewProvider {
    static var previews: some View {
        CuideComponent(title: "Title", subtitle: "Swipe right",description:"This is a placeholder sentence. This is a placeholder sentence.",icon: "heart.circle" ).previewLayout(.sizeThatFits)
    }
}
