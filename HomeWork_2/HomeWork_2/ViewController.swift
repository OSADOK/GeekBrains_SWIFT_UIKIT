//
//  ViewController.swift
//  HomeWork_2
//
//  Created by Славон Еремин on 11.12.2023.
//

import UIKit

class ViewController: UIViewController {
    
    private let imageView: UIImageView = {
        let imageView = UIImageView(image: UIImage(systemName: "person"))
        imageView.backgroundColor = .yellow
        return imageView
    }()
    
    
    private let label: UILabel = {
        let label = UILabel()
        label.text = "Авторизация"
        label.textAlignment = .center
        label.textColor = .white
        label.backgroundColor = .black
        return label
    }()
    
    private let textFieldLogin: UITextField = {
        let textFieldLogin = UITextField()
        textFieldLogin.text = "Логин"
        textFieldLogin.textAlignment = .center
        textFieldLogin.backgroundColor = .white
        return textFieldLogin
    }()
    private let textFieldPassword: UITextField = {
        let textFieldPassword = UITextField()
        textFieldPassword.text = "Пароль"
        textFieldPassword.textAlignment = .center
        textFieldPassword.backgroundColor = .white
        return textFieldPassword
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        button.setTitle("Войти", for: .normal)
        button.backgroundColor = .black
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .tintColor
        setupViews()
    }
    private func setupViews() {
        view.addSubview(label)
        view.addSubview(button)
        view.addSubview(imageView)
        view.addSubview(textFieldLogin)
        view.addSubview(textFieldPassword)
        setupConstraints()
        button.addTarget(self, action: #selector(tap), for: .touchUpInside)
    }
    private func setupConstraints() {
        imageView.translatesAutoresizingMaskIntoConstraints = false
        button.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        textFieldLogin.translatesAutoresizingMaskIntoConstraints = false
        textFieldPassword.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            
            
            imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10),
            imageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            imageView.widthAnchor.constraint(equalToConstant: 200),
            imageView.heightAnchor.constraint(equalToConstant: 200),
            
            label.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 10),
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            label.widthAnchor.constraint(equalToConstant: view.frame.size.width / 1.1 ),
            label.heightAnchor.constraint(equalToConstant: view.frame.width / 10),
            
            textFieldLogin.topAnchor.constraint(equalTo: label.bottomAnchor, constant: 10),
            textFieldLogin.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textFieldLogin.widthAnchor.constraint(equalToConstant: view.frame.size.width / 1.1 ),
            textFieldLogin.heightAnchor.constraint(equalToConstant: view.frame.width / 10),
            // логин и пароль на схеме меньше, но так заходелось такой размер оставить - нимагу, идеально же))
            textFieldPassword.topAnchor.constraint(equalTo: textFieldLogin.bottomAnchor, constant: 10),
            textFieldPassword.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            textFieldPassword.widthAnchor.constraint(equalToConstant: view.frame.size.width / 1.1 ),
            textFieldPassword.heightAnchor.constraint(equalToConstant: view.frame.width / 10),
            
            button.topAnchor.constraint(equalTo: textFieldPassword.bottomAnchor, constant: 20),
            button.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button.widthAnchor.constraint(equalToConstant: view.frame.width / 1.5),
            
//            button.leadingAnchor.constraint(equalTo: view.leadingAnchor),
//            button.trailingAnchor.constraint(equalTo: view.trailingAnchor)
            
        ])
    }
    @objc func tap() {
        navigationController?.pushViewController(TabBarController(), animated: true)
    }
}



