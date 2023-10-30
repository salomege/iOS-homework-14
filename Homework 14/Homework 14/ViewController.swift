//
//  ViewController.swift
//  Homework 14
//
//  Created by salome on 29.10.23.
//

import UIKit

class ViewController: UIViewController {
    
    private let buttonForAdding: UIButton = {
        let button = UIButton (type: .system)
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("+", for: .normal)
        button.backgroundColor = .orange
        button.tintColor = .black
        button.titleLabel?.font = UIFont.systemFont(ofSize: 20)
        button.layer.cornerRadius = 10
        return button
    }()
    private var tableView: UITableView!
    
    private var songs = Song.dummyData

    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
        view.addSubview(buttonForAdding)
        NSLayoutConstraint.activate([
                buttonForAdding.topAnchor.constraint(equalTo: view.topAnchor, constant: 50),
                buttonForAdding.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -30)
            ])
        buttonForAdding.addAction(UIAction(handler: { [weak self] action in
            self?.navigateToFormPage()
        }), for: .touchUpInside
    )}

    
    
    private func setupTableView() {
        initTableView()
        setTableViewConstraints()
        registerTableViewCells()
    }
    
    private func initTableView() {
        tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(tableView)
        tableView.dataSource = self
        tableView.delegate = self
    }
    
   private func registerTableViewCells() {
      tableView.register(SongTableViewCell.self, forCellReuseIdentifier: "cell")
   }

    private func setTableViewConstraints() {
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor)
        ])
    }
}

// MARK: TableView DataSource

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        //cell.textLabel?.text = "N\(indexPath.row + 1)"
        let song = Song.dummyData[indexPath.row]
        cell.textLabel?.text = song.name
        return cell
    }
}

// MARK: TableView Delegate

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    }
    func navigateToFormPage() {
        let formPage = AddSongViewController()
        present(formPage, animated: true)
        
        
    }
    }


