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
            updateLocalization()
        }
    }
    
    public func updateLocalization() {
        if let attributedText = localizedText.localizedAttributed(font: font, fontColor: textColor) {
            self.attributedText = attributedText
        } else {
            text = localizedText.localized()
        }
    }
}
