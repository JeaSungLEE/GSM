//
//  AppstoreItemTableViewCell.swift
//  GSM
//
//  Created by Jercy on 2020/11/05.
//

import UIKit

final class AppstoreItemTableViewCell: UITableViewCell {
    var isUpdateConstraint: Bool = false
    var thumbnailImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.backgroundColor = .gray
        return imageView
    }()
    var titleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "재르시 키보드"
        return label
    }()
    var descriptionLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "jeasungLEE"
        return label
    }()
    var openButton: UIButton = {
        let button = UIButton()
        button.translatesAutoresizingMaskIntoConstraints = false
        button.setTitle("보기", for: .normal)
        button.backgroundColor = .gray
        return button
    }()
    
    override func updateConstraints() {
        if !isUpdateConstraint {
            isUpdateConstraint = true
            addSubview(thumbnailImageView)
            addSubview(titleLabel)
            addSubview(descriptionLabel)
            addSubview(openButton)
            
            thumbnailImageView.topAnchor.constraint(equalTo: topAnchor, constant: 16).isActive = true
            thumbnailImageView.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 16).isActive = true
            thumbnailImageView.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -15).isActive = true
            thumbnailImageView.widthAnchor.constraint(equalToConstant: 60).isActive = true
            thumbnailImageView.heightAnchor.constraint(equalToConstant: 60).isActive = true
            
            
            titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: 22).isActive = true
            titleLabel.leadingAnchor.constraint(equalTo: thumbnailImageView.trailingAnchor, constant: 10).isActive = true
            titleLabel.trailingAnchor.constraint(equalTo: openButton.leadingAnchor, constant: 15).isActive = true
            
            descriptionLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 0).isActive = true
            descriptionLabel.leadingAnchor.constraint(equalTo: titleLabel.leadingAnchor, constant: 0).isActive = true
            descriptionLabel.trailingAnchor.constraint(equalTo: titleLabel.trailingAnchor, constant: 0).isActive = true
            
            openButton.centerYAnchor.constraint(equalTo: centerYAnchor, constant: 0).isActive = true
            openButton.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -15).isActive = true
            openButton.widthAnchor.constraint(equalToConstant: 66).isActive = true
        }
        
        super.updateConstraints()
    }
}
