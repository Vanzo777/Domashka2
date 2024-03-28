//
//  ViewController.swift
//  Domashka2
//
//  Created by Иван Федосеев on 27.03.2024.
//

import UIKit

final class ViewController: UIViewController {
    
    
    private lazy var cardView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 16
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private lazy var rateLabel: UILabel = {
        let label = UILabel()
        label.text = "Rate Swift course"
        label.font = .systemFont(ofSize: 40, weight: .semibold)
        label.textAlignment = .center
        label.textColor = .black
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var descriptionLabel: UILabel = {
        let label = UILabel()
        label.text = """
        Consequat velit qui adipisicing sunt do
        reprehenderit ad laborum tempor ullamco
        exercitation. Ullamco tempor adipisicing et
        voluptate duis sit esse aliqua esse ex dolore
        esse. Consequat velit qui adipisicing sunt.
        """
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 15, weight: .semibold )
        label.textAlignment = .center
        label.textColor = .systemGray
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private lazy var loveButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("LOVE IT!", for: .normal)
        button.backgroundColor = .systemCyan
        button.setTitleColor(.black, for: .normal)
        button.addTarget(self, action: #selector (loveTapped), for: .touchUpInside)
        button.layer.cornerRadius = 7
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    private lazy var hateButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Don't like them? Let us know.", for: .normal)
        button.setTitleColor(.red, for: .normal)
        button.addTarget(self, action: #selector (hateTapped), for: .touchUpInside)
        button.layer.cornerRadius = 7
        button.translatesAutoresizingMaskIntoConstraints = false
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
        setupLayout()
    }
    
    private func setupViews(){
        view.backgroundColor = .systemCyan
        view.addSubviews(cardView, rateLabel, descriptionLabel, loveButton, hateButton)
    }
    
    private func setupLayout(){
        NSLayoutConstraint.activate([
            cardView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            cardView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15),
            cardView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15),
            cardView.heightAnchor.constraint(equalToConstant: 400),
            
            rateLabel.centerXAnchor.constraint(equalTo: cardView.centerXAnchor),
            rateLabel.topAnchor.constraint(equalTo: cardView.topAnchor, constant: 50),
            
            
            descriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            descriptionLabel.topAnchor.constraint(equalTo: rateLabel.bottomAnchor, constant: 30),
            
            loveButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            loveButton.topAnchor.constraint(equalTo: descriptionLabel.bottomAnchor, constant: 50),
            loveButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            loveButton.heightAnchor.constraint(equalToConstant: 50),
            
            hateButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            hateButton.topAnchor.constraint(equalTo: loveButton.bottomAnchor, constant: 30),
            hateButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 30),
            hateButton.heightAnchor.constraint(equalToConstant: 30)
            
        ])
    }
    @objc func loveTapped (_ sender: UIButton) {
        let love = ViewController()
        print("##")
    }
    @objc func hateTapped (_ sender: UIButton) {
        let hate = ViewController()
        print("##")
    }
}
