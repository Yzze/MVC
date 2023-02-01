//
//  SettingsViewController.swift
//  MVC
//
//  Created by Ян Жигурс on 01.02.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    var table = Table()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        setupHierarchy()
        setupLayout()
    }
    
    private func setupView() {
       title = "Настройки"
       navigationController?.navigationBar.prefersLargeTitles = true
       view.backgroundColor = .systemGray5
   }
   
    private func setupHierarchy() {
        view.addSubview(table.tableView)
   }
   
    private func setupLayout() {
       NSLayoutConstraint.activate([
        table.tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
        table.tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        table.tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
        table.tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor)
       ])
   }
}
