//
//  SecondScreen.swift
//  ObservableObject
//
//  Created by Зехниддин on 01/02/21.
//

import SwiftUI

struct SecondScreen: View {
    @ObservedObject var settings: UserSettings
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text("User ID: ") + Text(settings.username).fontWeight(.medium)
            Text("User PW: ") + Text(settings.password).fontWeight(.medium)
        }
        .font(.system(size: 20, design: .rounded))
    }
}

struct SecondScreen_Previews: PreviewProvider {
    static var previews: some View {
        SecondScreen(settings: UserSettings())
    }
}
