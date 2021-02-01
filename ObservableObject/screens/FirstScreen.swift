//
//  FirstScreen.swift
//  ObservableObject
//
//  Created by Зехниддин on 01/02/21.
//

import SwiftUI

struct FirstScreen: View {
    @ObservedObject var settings = UserSettings()
    
    var body: some View {
        NavigationView {
            VStack(spacing: 10) {
                TextField("Username", text: $settings.username).modifier(FieldsStyle())

                SecureField("Password", text: $settings.password).modifier(FieldsStyle())
                
                NavigationLink(destination: SecondScreen(settings: settings)) {
                    Text("Show").modifier(ButtonStyle())
                }
            }.navigationBarTitle("Observable Object", displayMode: .inline)
        }.navigationViewStyle(StackNavigationViewStyle())
    }
}

struct FieldsStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .textFieldStyle(RoundedBorderTextFieldStyle())
            .padding(.horizontal)
    }
}

struct ButtonStyle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity)
            .frame(height: 45)
            .foregroundColor(.white)
            .background(Color.blue)
            .cornerRadius(8)
            .padding(.horizontal)
    }
}

struct FirstScreen_Previews: PreviewProvider {
    static var previews: some View {
        FirstScreen()
    }
}
