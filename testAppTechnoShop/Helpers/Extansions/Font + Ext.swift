//
//  Font + Ext.swift
//  testAppTechnoShop
//
//  Created by Алексей Попроцкий on 15.12.2022.
//

import SwiftUI


extension Font {
    static func markPro(size: CGFloat) -> Font {
        Font.custom("MarkPro", size: size)
        }
    
    static func markProMedium(size: CGFloat) -> Font {
        Font.custom("MarkPro-Medium", size: size)
        }
    
    static func markProBold(size: CGFloat) -> Font {
        Font.custom("MarkPro-Bold", size: size)
        }
    
    static func markProHeavy(size: CGFloat) -> Font {
        Font.custom("MarkPro-Heavy", size: size)
        }
}
