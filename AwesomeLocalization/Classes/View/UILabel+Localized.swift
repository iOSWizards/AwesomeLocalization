//
//  UILabel+Localized.swift
//  AwesomeLocalization
//
//  Created by Evandro Harrison Hoffmann on 10/4/17.
//

import UIKit

@IBDesignable
extension UILabel {
    
    private static let association = ObjectAssociation<NSObject>()

    @IBInspectable
    public var localizedText: String {
        get {
            return UILabel.association[self] as? String ?? ""
        }
        set (localizedText) {
            UILabel.association[self] = localizedText as NSObject
            self.text = localizedText.localized()
        }
    }
    
    @IBInspectable
    public var localizationTable: String? {
        get {
            return UILabel.association[self] as? String ?? ""
        }
        set (localizationTable) {
            UILabel.association[self] = localizationTable as NSObject?
            self.text = localizedText.localized()
        }
    }
    
    public func updateLocalization() {
        text = localizedText.localized(tableName: localizationTable)
    }
}
