//
//  Label.swift
//  physics
//
//  Created by Артем Климкин on 27/02/2020.
//  Copyright © 2020 Artem Klimkin. All rights reserved.
//

import UIKit

class Label: UILabel {

    init(textAligment: NSTextAlignment, fontSize: CGFloat){
        super.init(frame: .zero)
        self.textAlignment = textAlignment
        self.font = UIFont.systemFont(ofSize: fontSize, weight: .bold)
        configureLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureLabel(){
        textColor = .label
        minimumScaleFactor = 0.9
        adjustsFontSizeToFitWidth = true
        translatesAutoresizingMaskIntoConstraints = false
    }
}
