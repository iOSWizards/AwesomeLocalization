//
//  AwesomeLabel.swift
//  Mindvalley
//
//  Created by Evandro Harrison Hoffmann on 10/4/17.
//  Copyright © 2017 Mindvalley. All rights reserved.
//

import UIKit

@IBDesignable
public class LocalizableLabel: UILabel {

    @IBInspectable var localizedText: String = "" {
        didSet {
            updateLocalization()
        }
    }
    
    @IBInspectable var localizationTable: String = "Localizable" {
        didSet {
            updateLocalization()
        }
    }
    
    public func updateLocalization() {
        text = localizedText.localized(tableName: localizationTable)
    }
    
}
