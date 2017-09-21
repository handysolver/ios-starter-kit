//
//  Generic.swift
//  Auto Accounting
//
//  Created by HSM3 on 20/09/17.
//  Copyright © 2017 HandySolver. All rights reserved.
//

import Foundation

 
func exchange<T>( a: inout T, b: inout T) {
    let temp = a
    a = b
    b = temp
}
