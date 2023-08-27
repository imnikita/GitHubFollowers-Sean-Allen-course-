//
//  GHFollowerCell.swift
//  GitHubAPIapp
//
//  Created by Nikita Popov on 20.04.2021.
//

import UIKit

class GHFollowerCell: UICollectionViewCell {
    
    static let reuseId = "reuseID"
    let avatarImageView = GHAvatarImageView(frame: .zero)
    let usernameLabel = GHTitleLabel(textAlignment: .center, fontSize: 16)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configure()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func set(follower: Follower) {
        usernameLabel.text = follower.login
        avatarImageView.downloadImage(from: follower.avatarUrl)
    }
    
    private func configure() {
//        backgroundColor = .systemPink
        let padding: CGFloat = 8
        addSubview(avatarImageView)
        addSubview(usernameLabel)
        
        avatarImageView.anchor(top: contentView.topAnchor, leading: contentView.leadingAnchor, bottom: nil, trailing: contentView.trailingAnchor, padding: .init(top: padding, left: padding, bottom: 0, right: padding))
        avatarImageView.heightAnchor.constraint(equalTo: avatarImageView.widthAnchor).isActive = true
    
        usernameLabel.anchor(top: avatarImageView.bottomAnchor, leading: contentView.leadingAnchor, bottom: contentView.bottomAnchor, trailing: contentView.trailingAnchor, padding: .init(top: 12, left: padding, bottom: padding, right: padding))
        usernameLabel.constrainHeight(constant: 20)
    
    }
    
    
}
