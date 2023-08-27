//
//  AlertVC.swift
//  GitHubAPIapp
//
//  Created by Nikita Popov on 18.04.2021.
//

import UIKit

class AlertVC: UIViewController {
    
    let containerView = UIView()
    let titleLabel = GHTitleLabel(textAlignment: .center, fontSize: 20)
    let messageLabel = GHBodyLabel(textAlignment: .center)
    let actionButton = GHButton(backgroundColor: .systemPink, title: "Ok")
    
    var alertTitle: String?
    var message: String?
    var buttonTitle: String?
    
    init(title: String, message: String, buttonTitle: String) {
        super.init(nibName: nil, bundle: nil)
        self.alertTitle = title
        self.message = message
        self.buttonTitle = buttonTitle
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.init(red: 0/255, green: 0/255, blue: 0/255, alpha: 0.75)
        configureContainerView()
        configureTitleLabel()
        configureButton()
        configureMessageLabel()
    }
    
    private func configureContainerView() {
        view.addSubview(containerView)
        containerView.layer.cornerRadius = 16
        containerView.layer.borderWidth = 2
        containerView.layer.borderColor = UIColor.white.cgColor
        containerView.backgroundColor = .systemBackground
        containerView.centerInSuperview()
        containerView.constrainWidth(constant: 280)
        containerView.constrainHeight(constant: 280)
    }
    
    private func configureTitleLabel() {
        containerView.addSubview(titleLabel)
        titleLabel.text = alertTitle ?? "Something went wrong."
        titleLabel.anchor(top: containerView.topAnchor, leading: containerView.leadingAnchor,
                          bottom: nil, trailing: containerView.trailingAnchor,
                          padding: .init(top: 20, left: 20, bottom: 0, right: 20))
    }
    
    private func configureButton() {
        containerView.addSubview(actionButton)
        actionButton.setTitle(buttonTitle ?? "Ok", for: .normal)
        actionButton.addTarget(self, action: #selector(dismissVC), for: .touchUpInside)
        
        actionButton.anchor(top: nil, leading: containerView.leadingAnchor , bottom: containerView.bottomAnchor, trailing: containerView.trailingAnchor,
                            padding: .init(top: 0, left: 20, bottom: 20, right: 20),
                            size: .init(width: 0, height: 45))
    }
    
    private func configureMessageLabel() {
        containerView.addSubview(messageLabel)
        messageLabel.text = message ?? "Unable to complete request."
        messageLabel.numberOfLines = 4
        
        messageLabel.anchor(top: titleLabel.bottomAnchor, leading: containerView.leadingAnchor, bottom: actionButton.topAnchor, trailing: containerView.trailingAnchor, padding: .init(top: 0, left: 15, bottom: 0, right: 15))
    }
    
    @objc private func dismissVC() {
        dismiss(animated: true)
    }

}
