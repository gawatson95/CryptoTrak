//
//  String.swift
//  CryptoTrak
//
//  Created by Grant Watson on 5/13/22.
//

import Foundation

extension String {
    
    var removingHTMLOccurances: String {
        return self.replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
}
