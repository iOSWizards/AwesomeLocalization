//
//  UITextField+AL.swift
//  AwesomeLocalization
//
//  Created by Evandro Harrison Hoffmann on 10/10/17.
//

import UIKit

@IBDesignable
extension UITextField {
    
    // MARK: - Associations
    
    private static let localizedTextAssociation = ObjectAssociation<NSObject>()
    private static let placeholderTextColorAssociation = ObjectAssociation<NSObject>()
    private static let customLocalizationFileAssociation = ObjectAssociation<NSObject>()
    private static let isAttributedLocalizationAssociation = ObjectAssociation<NSObject>()
    
    // MARK: - Inspectables
    
    @IBInspectable
    public var localizedPlaceholder: String {
        get {
            return UITextField.localizedTextAssociation[self] as? String ?? ""
        }
        set (localizedText) {
            UITextField.localizedTextAssociation[self] = localizedText as NSObject
            updateLocalization()
        }
    }
    
    @IBInspectable
    public var placeholderTextColor: UIColor {
        get {
            return UITextField.placeholderTextColorAssociation[self] as? UIColor ?? UIColor.color(hexString: "C7C7CD") ?? .lightGray
        }
        set (placeholderTextColor) {
            UITextField.placeholderTextColorAssociation[self] = placeholderTextColor as NSObject
            updateLocalization()
        }
    }
    
    @IBInspectable
    public var customLocalizationFile: String? {
        get {
            return UITextField.customLocalizationFileAssociation[self] as? String
        }
        set (localizationTable) {
            UITextField.customLocalizationFileAssociation[self] = localizationTable as NSObject?
            updateLocalization()
        }
    }
    
    @IBInspectable
    public var isAttributedLocalization: Bool {
        get {
            return UITextField.isAttributedLocalizationAssociation[self] as? Bool ?? false
        }
        set (isLocalizationAttributed) {
            UITextField.isAttributedLocalizationAssociation[self] = isLocalizationAttributed as NSObject
            updateLocalization()
        }
    }
    
    public func updateLocalization() {
        if isAttributedLocalization,  let attributedText = localizedPlaceholder.localizedAttributed(tableName: customLocalizationFile, font: font, fontColor: placeholderTextColor, alignment: textAlignment) {
            attributedPlaceholder = attributedText
        } else {
            placeholder = localizedPlaceholder.localized(tableName: customLocalizationFile)
        }
    }
}
