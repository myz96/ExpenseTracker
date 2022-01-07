//
//  Category.swift
//  ExpenseTracker
//
//  Created by Michael Zhao on 1/3/22.
//

import Foundation
import SwiftUI

enum Category: String, CaseIterable {
    
    case essentials
    case gifts
    case subscriptions
    case food
    case dates
    case consumerism
    case ravesup
    case other
    
    var systemNameIcon: String {
        switch self {
        case .essentials: return "cart.fill"
        case .gifts: return "gift.fill"
        case .subscriptions: return "tv.music.note"
        case .food: return "fork.knife"
        case .dates: return "heart.circle"
        case .consumerism: return "face.smiling"
        case .ravesup: return "pills"
        case .other: return "archivebox"
        }
    }
        
    var color: Color {
        switch self {
        case .essentials: return Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
        case .subscriptions: return Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1))
        case .gifts: return Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        case .food: return Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        case .dates: return Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        case .consumerism: return Color(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        case .ravesup: return Color(#colorLiteral(red: 0.1, green: 0.1, blue: 0.1, alpha: 0.3))
        case .other: return Color(#colorLiteral(red: 0.1, green: 0.1, blue: 0.1, alpha: 0.3))
        }
    }
}

extension Category: Identifiable {
    var id: String { rawValue }
}
