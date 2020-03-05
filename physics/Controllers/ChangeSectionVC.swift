//
//  ChangeSectionVC.swift
//  physics
//
//  Created by Артем Климкин on 01/03/2020.
//  Copyright © 2020 Artem Klimkin. All rights reserved.
//

import UIKit

class ChangeSectionVC: UIViewController {

    
    var subjectNum: Int!
    
    let subjectMechanics = ["Архимедова сила", "Вес воздуха", "Вес тела","Давление","Движение тела по окружности",
                            "Движение тела, брошенного вертикально вверх","Длина и скорость волны","Еденицы силы",
                            "Единица силы","Закон Всемирного тяготения","Законы Ньютона","Законы сохранения",
                            "Звуковые волны. Скорость звука"]
    
    let subjectElectrodynamics = ["Subject","Subject","Subject","Subject","Subject"]
    
    
    init(subjectNum: Int){
        super.init(nibName: nil, bundle: nil)
        
        self.subjectNum = subjectNum
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let tableView = UITableView()
    var safeArea: UILayoutGuide!
    
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


extension ChangeSectionVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch subjectNum {
        case 2:
            return subjectMechanics.count
        case 3:
            return subjectElectrodynamics.count
        default:
            return 0
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        switch subjectNum {
        case 2:
            cell.textLabel?.text = subjectMechanics[indexPath.row]
        case 3:
            cell.textLabel?.text = subjectElectrodynamics[indexPath.row]
        default:
            cell.textLabel?.text = ""
        }
        
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        switch subjectNum {
        case 2:
            present(ChangeTheoryOrPracticeVC(subjectNum: indexPath.row), animated: true)
        case 3:
            present(ChangeTheoryOrPracticeVC(subjectNum: (indexPath.row + 10) * 10), animated: true)
        default:
            return
        }
    }
    
}
