//
//  SettingsView.swift
//  first
//
//  Created by bedirhan on 7.08.2023.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        
        VStack {
            
            Text("Settings")
            HStack {
                Rectangle()
                    .foregroundColor(.blue)
                Circle()
                    .foregroundColor(.orange)
                RoundedRectangle(cornerRadius: 15, style: .continuous)
                    .foregroundColor(.green)
            }
            .aspectRatio(3.0, contentMode: .fit)
        }.padding(12)
       
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
