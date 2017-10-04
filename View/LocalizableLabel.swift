//
//  AwesomeLabel.swift
//  Mindvalley
//
//  Created by Evandro Harrison Hoffmann on 10/4/17.
//  Copyright © 2017 Mindvalley. All rights reserved.
//

import UIKit

@IBDesignable class LocalizableLabel: UILabel {

    @IBInspectable var localizedText: String {
        didSet {
            text = localizedText.localized
        }
    }

}
