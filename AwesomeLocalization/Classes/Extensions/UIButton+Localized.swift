//
//  UIView+Localized.swift
//  AwesomeLocalization
//
//  Created by Evandro Harrison Hoffmann on 10/4/17.
//

import UIKit

@IBDesignable
extension UIButton {
    
    // MARK: - Associations
    
    private static let localizedTextAssociation = ObjectAssociation<NSObject>()
    private static let localizationTableAssociation = ObjectAssociation<NSObject>()
    private static let isAttributedLocalizationAssociation = ObjectAssociation<NSObject>()
    
    // MARK: - Inspectables
    
    @IBInspectable
    public var localizedText: String {
        get {
            return UIButton.localizedTextAssociation[self] as? String ?? ""
        }
        set (localizedText) {
            UIButton.localizedTextAssociation[self] = localizedText as NSObject
            updateLocalization()
        }
    }
    
    @IBInspectable
    public var localizationTable: String? {
        get {
            return UIButton.localizationTableAssociation[self] as? String
        }
        set (localizationTable) {
            UIButton.localizationTableAssociation[self] = localizationTable as NSObject?
            updateLocalization()
        }
    }
    
    @IBInspectable
    public var isAttributedLocalization: Bool {
        get {
            return UIButton.isAttributedLocalizationAssociation[self] as? Bool ?? false
        }
        set (isLocalizationAttributed) {
            UIButton.isAttributedLocalizationAssociation[self] = isLocalizationAttributed as NSObject
            updateLocalization()
        }
    }
    
    public func updateLocalization() {
        if isAttributedLocalization,  let attributedText = localizedText.localizedAttributed(tableName: localizationTable, font: titleLabel?.font, fontColor: titleColor(for: .normal)) {
            setAttributedTitle(attributedText, for: .normal)
        } else {
            setTitle(localizedText.localized(), for: .normal)
        }
    }
}

