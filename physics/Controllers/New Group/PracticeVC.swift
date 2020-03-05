//
//  PracticeVC.swift
//  physics
//
//  Created by Артем Климкин on 01/03/2020.
//  Copyright © 2020 Artem Klimkin. All rights reserved.
//

import UIKit

class PracticeVC: UIViewController {

    var practice: String!
    let practiceTextView = TextView(fontSize: 20)
    
    init(practice: String){
        super.init(nibName: nil, bundle: nil)
        
        self.practice = practice
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        
        configureTextView()

        // Do any additional setup after loading the view.
    }
    
    func configureTextView(){
        view.addSubview(practiceTextView)
        
        practiceTextView.text = practice
        
        NSLayoutConstraint.activate([
            practiceTextView.topAnchor.constraint(equalTo: view.topAnchor),
            practiceTextView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            practiceTextView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            practiceTextView.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
        
    }



}
