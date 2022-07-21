//
//  UIApplication.swift
//  CryptoTrak
//
//  Created by Grant Watson on 5/10/22.
//

import Foundation
import SwiftUI

extension UIApplication {
    
    func endEditing() {
        sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
    }
}
