//
//  UIView+Localized.swift
//  AwesomeLocalization
//
//  Created by Evandro Harrison Hoffmann on 10/4/17.
//

import UIKit

@IBDesignable
extension UIButton {
    
    private static let association = ObjectAssociation<NSObject>()
    
    @IBInspectable
    public var localizedText: String {
        get {
            return UIButton.association[self] as? String ?? ""
        }
        set (localizedText) {
            UIButton.association[self] = localizedText as NSObject
            updateLocalization()
        }
    }
    
    /*@IBInspectable
    public var localizationTable: String? {
        get {
            return UIButton.association[self] as? String
        }
        set (localizationTable) {
            UIButton.association[self] = localizationTable as NSObject?
            updateLocalization()
        }
    }*/
    
    public func updateLocalization() {
        setTitle(localizedText.localized(), for: .normal)
    }
}

