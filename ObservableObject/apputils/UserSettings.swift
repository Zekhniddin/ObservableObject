//
//  UserSettings.swift
//  ObservableObject
//
//  Created by Зехниддин on 01/02/21.
//

import Foundation

class UserSettings: ObservableObject {
    @Published var username = ""
    @Published var password = ""
}
