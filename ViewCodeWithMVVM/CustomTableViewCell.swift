//
//  CustomTableViewCell.swift
//  ViewCodeAndMVVM
//
//  Created by IATec - Rodrigo Leme on 13/07/22.
//

import UIKit
import Foundation

class CustomTableViewCell: UITableViewCell {
    
    @IBOutlet weak var imageUserImageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var idadeLabel: UILabel!
    
    @IBOutlet weak var professionLabel: UILabel!
    
    @IBOutlet weak var salaryLabel: UILabel!
    
    @IBOutlet weak var heartButton: UIButton!

    override func awakeFromNib() {
        super.awakeFromNib()
        self.imageUserImageView.clipsToBounds = true
        self.imageUserImageView.layer.cornerRadius = self.imageUserImageView.frame.height / 2
    }
    
    func setupCell(setup:Pessoa) {
        self.imageUserImageView.image = setup.imageUser
        self.nameLabel.text = "Nome: \(setup.name)"
        self.professionLabel.text = "Profissão: \(setup.profession)"
        self.salaryLabel.text = "Salário: \(setup.salary)"
        self.idadeLabel.text = "Idade: \(String(setup.age))"
        
        if setup.isEnableHeart {
            self.heartButton.tintColor = .red
        } else {
            self.heartButton.tintColor = .blue
        }
    }
    
    @IBAction func tappedHeartButton(_ sender: UIButton) {
        self.heartButton.tintColor = .red
    }
    
}
