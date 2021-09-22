//
//  TableViewCell.swift
//  Rest Api
//
//  Created by plaban dwivedy on 17/09/21.
//

import UIKit

class TableViewCell: UITableViewCell {

    lazy var userIdLabel: UILabel = {
        let userIdLabel = UILabel()
        userIdLabel.backgroundColor = .yellow
        userIdLabel.textAlignment = .center
        return userIdLabel
    }()
    
    func userIdConstrain() {
        userIdLabel.translatesAutoresizingMaskIntoConstraints = false
        userIdLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10).isActive = true
        userIdLabel.topAnchor.constraint(equalTo: self.topAnchor, constant: 3).isActive = true
        userIdLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10).isActive = true
        userIdLabel.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.25).isActive = true
    }
    lazy var idLabel: UILabel = {
        let idLabel = UILabel()
        idLabel.backgroundColor = .green
        idLabel.textAlignment = .center
        return idLabel
    }()
    func idConstrain() {
        idLabel.translatesAutoresizingMaskIntoConstraints = false
        idLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10).isActive = true
        idLabel.topAnchor.constraint(equalTo: userIdLabel.bottomAnchor, constant: 3).isActive = true
        idLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10).isActive = true
        idLabel.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.25).isActive = true
    }
    lazy var titleLabel: UILabel = {
        let titleLabel = UILabel()
        titleLabel.backgroundColor = .systemPink
        titleLabel.textAlignment = .center
        titleLabel.numberOfLines = 1
        return titleLabel
    }()
    func titleConstrain() {
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10).isActive = true
        titleLabel.topAnchor.constraint(equalTo: idLabel.bottomAnchor, constant: 3).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10).isActive = true
        titleLabel.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.25).isActive = true
    }
    lazy var completedLabel: UILabel = {
        let completedLabel = UILabel()
        completedLabel.backgroundColor = .cyan
        completedLabel.textAlignment = .center
        return completedLabel
    }()
    func completedConstrain() {
        completedLabel.translatesAutoresizingMaskIntoConstraints = false
        completedLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10).isActive = true
        completedLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 3).isActive = true
        completedLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10).isActive = true
        completedLabel.heightAnchor.constraint(equalTo: self.heightAnchor, multiplier: 0.25).isActive = true
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        self.addSubview(userIdLabel)
        self.addSubview(idLabel)
        self.addSubview(titleLabel)
        self.addSubview(completedLabel)
        self.userIdConstrain()
        self.idConstrain()
        self.titleConstrain()
        self.completedConstrain()
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
