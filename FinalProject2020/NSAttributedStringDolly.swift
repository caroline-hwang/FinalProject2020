//
//  NSAttributedStringDolly.swift
//  FinalProject2020
//
//  Created by Caroline Hwang on 7/15/20.
//  Copyright © 2020 Caroline Hwang. All rights reserved.
//

import Foundation

extension NSAttributedString {
    
    static func makeHyperlink(for path: String, in string: String, as substring: String) -> NSAttributedString{
        let nsString = NSString(string: string)
        let substringRange = nsString.range(of: substring)
        let attributedString = NSMutableAttributedString(string: string)
        attributedString.addAttribute(.link, value: path, range: substringRange)
        return attributedString
   
    
    }
    
}
