//
//  Double+Format.swift
//  FinancialFunction
//
//  Created by GuoHao on 2017/3/3.
//  Copyright © 2017年 cgh. All rights reserved.
//

import Foundation

extension Double {
    
    public enum Decimal: String {
        case ´1´ = "1"
        case ´2´ = "2"
        case ´3´ = "3"
        case ´4´ = "4"
        case ´5´ = "5"
        case ´6´ = "6"
        case ´7´ = "7"
        case ´8´ = "8"
        case ´9´ = "9"
    }
    
    /**
     Ex: 0.131419.decimal(.´2´) = 0.13
     */
    public func decimal(_ f: Decimal) -> String {
        return String(format:"%.\(f.rawValue)f", self)
    }
}
