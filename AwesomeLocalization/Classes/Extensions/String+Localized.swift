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
        return self.localized()
    }
    
    public func localized(tableName: String? = nil, bundle: Bundle = .main) -> String {
        return NSLocalizedString(self,
                                 tableName: tableName ?? "Localizable",
                                 bundle: bundle,
                                 value: "",
                                 comment: "")
    }
    
}
