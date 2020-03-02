//
//  InfoView.swift
//  Honeymoon
//
//  Created by Zerone on 02/03/20.
//  Copyright © 2020 thobio. All rights reserved.
//

import SwiftUI

struct InfoView: View {
    
     @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        
        ScrollView(.vertical,showsIndicators: false) {
            
            VStack (spacing: 20) {
                HeaderComponent()
                Spacer(minLength: 10)
                Text("App Info").fontWeight(.black).modifier(TitleModifier())
                AppInfoView()
                Text("Credits").fontWeight(.black).modifier(TitleModifier())
                CreditsView()
                Spacer(minLength: 10)
                
                Button(action: {
                    self.presentationMode.wrappedValue.dismiss()
                }) {
                    Text("Continue".uppercased()).modifier(ButtonModifier())
                }
            }
            .frame(minWidth:0,maxWidth: .infinity)
            .padding(.top,15)
            .padding(.bottom,25)
            .padding(.horizontal,25)
        }
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView()
    }
}



struct AppInfoView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            RowAppInfoView(Itemone: "Application",itemtwo: "Honeymoon")
            RowAppInfoView(Itemone: "Compatibility",itemtwo: "iPhone and iPad")
            RowAppInfoView(Itemone: "Developer",itemtwo: "Thobio Joseph")
            RowAppInfoView(Itemone: "Designer",itemtwo: "Robert Petras")
            RowAppInfoView(Itemone: "Version",itemtwo: "1.0.0")
        }
        
    }
}

struct RowAppInfoView: View {
    
    var Itemone:String
    var itemtwo:String
    
    var body: some View {
        VStack {
            HStack{
                Text(Itemone).foregroundColor(Color.gray)
                Spacer()
                Text(itemtwo)
            }
             Divider()
        }
    }
}

struct CreditsView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack{
                Text("Photos").foregroundColor(Color.gray)
                Spacer()
                Text("Unsplash")
                
            }
            Divider()
            Text("Photographers").foregroundColor(Color.gray)
            Text("Shifaaz Shamoon (Maldives), Grillot Edouard (France), Evan Wise (Greece), Christoph Schulz (United Arab Emirates), Andrew Coelho (USA), Damiano Baschiera (Italy), Daniel Olah (Hungary), Andrzej Rusinowski (Poland), Lucas Miguel (Slovenia), Florencia Potter (Spain), Ian Simmonds (USA), Ian Keefe (Canada), Denys Nevozhai (Thailand), David Köhler (Italy), Andre Benz (USA), Alexandre Chambon (South Korea), Roberto Nickson (Mexico), Ajit Paul Abraham (UK), Jeremy Bishop (USA), Davi Costa (Brazil), Liam Pozz (Australia)").multilineTextAlignment(.leading).font(.footnote)
        }
    }
}
