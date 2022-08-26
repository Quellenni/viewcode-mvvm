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
    
    var viewModel:CustomCellViewModel?

    override func awakeFromNib() {
        super.awakeFromNib()
        self.imageUserImageView.clipsToBounds = true
        self.imageUserImageView.layer.cornerRadius = self.imageUserImageView.frame.height / 2
    }
    
    func setupCell(user:User) {
        self.viewModel = CustomCellViewModel(data: user)
        
        self.imageUserImageView.image = self.viewModel?.getUserImage
        self.nameLabel.text = self.viewModel?.getName
        self.professionLabel.text = self.viewModel?.getProfession
        self.salaryLabel.text = self.viewModel?.getSalary
        self.idadeLabel.text = self.viewModel?.getAge
        
        if self.viewModel?.getIsEnableHeart ?? false{
            self.heartButton.tintColor = .red
        } else {
            self.heartButton.tintColor = .blue
        }
    }
    
    @IBAction func tappedHeartButton(_ sender: UIButton) {
        self.heartButton.tintColor = .red
    }
    
}
