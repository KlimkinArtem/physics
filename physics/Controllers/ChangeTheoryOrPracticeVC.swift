//
//  ChangeTheoryOrPracticeVC.swift
//  physics
//
//  Created by Артем Климкин on 04/03/2020.
//  Copyright © 2020 Artem Klimkin. All rights reserved.
//

import UIKit

class ChangeTheoryOrPracticeVC: UIViewController {

    var subjectNum: Int!
    
    let tableView = UITableView()
    var safeArea: UILayoutGuide!
    
    var theoryOrPractice = ["Теория", "Задания"]
    
    init(subjectNum: Int){
        super.init(nibName: nil, bundle: nil)
        
        self.subjectNum = subjectNum
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground
        
        safeArea = view.layoutMarginsGuide
        
        
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        tableView.dataSource = self
        tableView.delegate = self
        
        setupTableView()
    }
    
    func setupTableView() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false

        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: safeArea.topAnchor),
            tableView.leftAnchor.constraint(equalTo: view.leftAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.rightAnchor.constraint(equalTo: view.rightAnchor)
        ])
    }


}

extension ChangeTheoryOrPracticeVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return theoryOrPractice.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = theoryOrPractice[indexPath.row]
        
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //0 - теория
        //1 - практика
        if indexPath.row == 0{
            switch subjectNum {
            case 0:
                present(TheoryVC(theory: MechanicsTheory.ArchimedeanForce.rawValue), animated: true)
            case 1:
                present(TheoryVC(theory: MechanicsTheory.AirWeight.rawValue), animated: true)
            case 2:
                present(TheoryVC(theory: MechanicsTheory.BodyWeight.rawValue), animated: true)
            default:
                return
            }
        }else{
            switch subjectNum {
            case 0:
                present(PracticeVC(practice: MechanicsPractice.ArchimedeanForcePractice.rawValue), animated: true)
            case 1:
                present(PracticeVC(practice: MechanicsPractice.AirWeightPractice.rawValue), animated: true)
            case 2:
                present(PracticeVC(practice: MechanicsPractice.BodyWeightPractice.rawValue), animated: true)
            default:
                return
            }
        }

    }
    
}
