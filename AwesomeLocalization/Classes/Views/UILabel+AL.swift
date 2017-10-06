//
//  UILabel+Localized.swift
//  AwesomeLocalization
//
//  Created by Evandro Harrison Hoffmann on 10/4/17.
//

import UIKit

@IBDesignable
extension UILabel {
    
    // MARK: - Associations
    
    private static let localizedTextAssociation = ObjectAssociation<NSObject>()
    private static let localizationTableAssociation = ObjectAssociation<NSObject>()
    private static let isAttributedLocalizationAssociation = ObjectAssociation<NSObject>()

    // MARK: - Inspectables
    
    @IBInspectable
    public var localizedText: String {
        get {
            return UILabel.localizedTextAssociation[self] as? String ?? ""
        }
        set (localizedText) {
            UILabel.localizedTextAssociation[self] = localizedText as NSObject
            updateLocalization()
        }
    }
    
    @IBInspectable
    public var localizationTable: String? {
        get {
            return UILabel.localizationTableAssociation[self] as? String
        }
        set (localizationTable) {
            UILabel.localizationTableAssociation[self] = localizationTable as NSObject?
            updateLocalization()
        }
    }
    
    @IBInspectable
    public var isAttributedLocalization: Bool {
        get {
            return UILabel.isAttributedLocalizationAssociation[self] as? Bool ?? false
        }
        set (isLocalizationAttributed) {
            UILabel.isAttributedLocalizationAssociation[self] = isLocalizationAttributed as NSObject
            updateLocalization()
        }
    }
    
    public func updateLocalization() {
        if isAttributedLocalization, let attributedText = localizedText.localizedAttributed(tableName: localizationTable, font: font, fontColor: textColor, alignment: textAlignment) {
            self.attributedText = attributedText
        } else {
            text = localizedText.localized()
        }
    }
}
