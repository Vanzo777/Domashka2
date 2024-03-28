//
//  UIViews + Subviews.swift
//  Domashka2
//
//  Created by Иван Федосеев on 27.03.2024.
//

import UIKit

extension UIView {
    func addSubviews(_ views: UIView...){
        views.forEach({addSubview($0) })
    }
}
