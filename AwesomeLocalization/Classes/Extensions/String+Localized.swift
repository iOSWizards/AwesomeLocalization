//
//  String+Localized.swift
//  Mindvalley
//
//  Created by Evandro Harrison Hoffmann on 10/4/17.
//  Copyright © 2017 Mindvalley. All rights reserved.
//

import Foundation

extension String {
    
    // MARK: - Data
    
    public var utf8Data: Data? {
        return data(using: String.Encoding.utf8)
    }
    
    // MARK: - HTML
    
    public var stripHTML: String? {
        return replacingOccurrences(of: "<[^>]+>", with: "", options: .regularExpression, range: nil)
    }
    
    public func appendHTML(font: UIFont? = nil, fontColor: UIColor? = nil) -> String {
        var styles = ""
        
        if let color = fontColor?.toHexString() {
            styles.append("color: \(color);")
        }
        
        if let font = font {
            styles.append("font-size: \(font.pointSize)px;")
            styles.append("font-family: '\(font.familyName) Bold';")
        }
        
        return ("<html><head><style>body {\(styles)}</style></head><body>"+self+"</body></html>")
    }
    
    // MARK: - Localization
    
    public var localized: String {
        return self.localized()
    }
    
    public func localized(tableName: String? = nil, bundle: Bundle = .main) -> String {
        return NSLocalizedString(self, tableName: tableName ?? "Localizable", bundle: bundle, value: "", comment: "")
    }
    
    public func localizedAttributed(tableName: String? = nil, bundle: Bundle = .main, font: UIFont? = nil, fontColor: UIColor? = nil) -> NSAttributedString? {
        let localizedString = localized(tableName: tableName, bundle: bundle)
        
        return localizedString.appendHTML(font: font, fontColor: fontColor).utf8Data?.attributedString
    }
    
}
