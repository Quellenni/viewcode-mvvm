//
//  CustomTableViewCellScreen.swift
//  ViewCodeWithMVVM
//
//  Created by Quellenni Barreto on 29/08/22.
//

import UIKit

class CustomTableViewCellScreen: UIView {
    
    lazy var userImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.clipsToBounds = true
        imageView.layer.cornerRadius = imageView.frame.height / 2
        return imageView
    }()
    
    lazy var nameLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var ageLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var professionLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var salaryLabel:UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var heartButton:UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setImage(UIImage(systemName: "heart"), for: .normal)
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        self.addSubViews()
        self.configConstraints()
    }
    
    private func addSubViews(){
        self.addSubview(self.userImageView)
        self.addSubview(self.nameLabel)
        self.addSubview(self.ageLabel)
        self.addSubview(self.professionLabel)
        self.addSubview(self.salaryLabel)
        self.addSubview(self.heartButton)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configConstraints(){
        NSLayoutConstraint.activate([
            self.userImageView.topAnchor.constraint(equalTo: self.topAnchor, constant: 21),
            self.userImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 16),
            self.userImageView.heightAnchor.constraint(equalToConstant: 122),
            self.userImageView.widthAnchor.constraint(equalToConstant: 121),
            
            self.nameLabel.topAnchor.constraint(equalTo: self.userImageView.topAnchor),
            self.nameLabel.leadingAnchor.constraint(equalTo: self.userImageView.trailingAnchor, constant: 16),
            self.nameLabel.trailingAnchor.constraint(equalTo: self.heartButton.leadingAnchor, constant: -23),
            
            self.ageLabel.topAnchor.constraint(equalTo: self.nameLabel.bottomAnchor,constant: 10),
            self.ageLabel.trailingAnchor.constraint(equalTo: self.nameLabel.trailingAnchor),
            self.ageLabel.leadingAnchor.constraint(equalTo: self.nameLabel.leadingAnchor),
            
            self.professionLabel.topAnchor.constraint(equalTo: self.ageLabel.bottomAnchor,constant: 10),
            self.professionLabel.trailingAnchor.constraint(equalTo: self.nameLabel.trailingAnchor),
            self.professionLabel.leadingAnchor.constraint(equalTo: self.nameLabel.leadingAnchor),
            
            self.salaryLabel.topAnchor.constraint(equalTo: self.professionLabel.bottomAnchor,constant: 10),
            self.salaryLabel.trailingAnchor.constraint(equalTo: self.nameLabel.trailingAnchor),
            self.salaryLabel.leadingAnchor.constraint(equalTo: self.nameLabel.leadingAnchor),
            
            self.heartButton.topAnchor.constraint(equalTo: self.topAnchor, constant: 18),
            self.heartButton.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -20),
            self.heartButton.heightAnchor.constraint(equalToConstant: 28),
            self.heartButton.widthAnchor.constraint(equalToConstant: 23),
            
        ])
    }

}
