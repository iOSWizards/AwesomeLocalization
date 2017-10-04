//
//  String+Localized.swift
//  Mindvalley
//
//  Created by Evandro Harrison Hoffmann on 10/4/17.
//  Copyright © 2017 Mindvalley. All rights reserved.
//

import Foundation

extension String {
    
    public var localized: String {
        return NSLocalizedString(self, tableName: nil, bundle: Bundle.main, value: "", comment: "")
    }
    
}
