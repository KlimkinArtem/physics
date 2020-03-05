//
//  TextView.swift
//  physics
//
//  Created by Артем Климкин on 04/03/2020.
//  Copyright © 2020 Artem Klimkin. All rights reserved.
//

import UIKit

class TextView: UITextView {

    init(fontSize: CGFloat){
        super.init(frame: .zero, textContainer: nil)
        self.font = UIFont.systemFont(ofSize: fontSize, weight: .light)
        configureTextView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureTextView(){
        translatesAutoresizingMaskIntoConstraints = false
        textColor = .label
        isEditable = false
    }
}
