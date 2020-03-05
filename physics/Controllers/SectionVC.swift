//
//  SectionVC.swift
//  physics
//
//  Created by Артем Климкин on 27/02/2020.
//  Copyright © 2020 Artem Klimkin. All rights reserved.
//
//1. Архимедова сила
//2. Вес воздуха
//3. Вес тела
//4. Графики кинематических велечин
//5. Графики колебательного процесса
//6. Давление
//7. Движение тела по окружности
//8. Движение тела, брошенного вертикально вверх
//9. Длина и скорость волны
//10. Еденицы силы
//11. Единица силы
//12. Закон Всемирного тяготения
//13. Законы Ньютона
//14. Законы сохранения
//15. Звуковые волны. Скорость звука


import UIKit

class SectionVC: UIViewController {

    let tableView = UITableView()
    var safeArea: UILayoutGuide!
    
    
    var subject = ["Справочные материалы", "Формулы","Механика","Электродинамика","Оптика", "Звуковые волны",
                   "Молекулярная физика","Термодинамика"]
    
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

extension SectionVC: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return subject.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = subject[indexPath.row]
        cell.accessoryType = .disclosureIndicator
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.row{
        case 0:
            self.present(TheoryVC(theory: "theory"), animated: true)
        case 1:
            self.present(TheoryVC(theory: "formuals"), animated: true)
        case 2:
            self.present(ChangeSectionVC(subjectNum: 2), animated: true)
        case 3:
            self.present(ChangeSectionVC(subjectNum: 3), animated: true)
        case 4:
            break
        case 5:
            break
        default:
            break
        }
    }
    
}
