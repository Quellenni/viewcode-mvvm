//
//  HomeScreenView.swift
//  ViewCodeWithMVVM
//
//  Created by Quellenni Barreto on 29/08/22.
//

import UIKit
import SnapKit

class HomeScreenView2: UIView {
    
    lazy var tableView: UITableView = {
        let tableView = UITableView()
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.separatorStyle = .none
        tableView.register(CustomTableViewCell.self, forCellReuseIdentifier: "CustomTableViewCell")
        return tableView
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubview(self.tableView)
        //self.configConstraints()
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setupTableViewProtocols(delegate:UITableViewDelegate, dataSource:UITableViewDataSource){
        self.tableView.delegate = delegate
        self.tableView.dataSource = dataSource
    }
    
    public func reloadTableView(){
        self.tableView.reloadData()
        
    }
    
//    private func configConstraints(){
//        NSLayoutConstraint.activate([
//            self.tableView.leadingAnchor.constraint(equalTo: self.leadingAnchor),
//            self.tableView.trailingAnchor.constraint(equalTo: self.trailingAnchor),
//            self.tableView.bottomAnchor.constraint(equalTo: self.bottomAnchor),
//            self.tableView.topAnchor.constraint(equalTo: self.topAnchor),
//        ])
//    }
}

extension HomeScreenView2: ViewCodable {
    func setupViews() {
        addSubview(tableView)
    }
    
    func setupAnchors() {
        tableView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.bottom.equalToSuperview()
            make.top.equalToSuperview()
        }
    }
    
    
    
    
}