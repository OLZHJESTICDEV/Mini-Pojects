//
//  ViewController.swift
//  2
//
//  Created by MAC on 28.06.2022.
//

import UIKit

class ViewController: UIViewController {
    let button1 = UIButton()
    let button2 = UIButton()
    let button3 = UIButton()
    
    var countries = [String]()
    var score = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
        configure()
        constraint()
        
        countries += ["estonia", "france", "germany", "ireland", "italy", "monaco", "nigeria", "russia", "us", "uk", "poland", "spain"]

        askQuestion()
    }
    
    func askQuestion() {
        button1.setBackgroundImage(UIImage(named: countries[0]), for: .normal)
        button2.setBackgroundImage(UIImage(named: countries[1]), for: .normal)
        button3.setBackgroundImage(UIImage(named: countries[2]), for: .normal)
    }
    
    
    
    
    
    
    
    
    
    
    private func configure() {
        button1.setBackgroundImage(UIImage(named: "us"), for: .normal)
        button2.setBackgroundImage(UIImage(named: "us"), for: .normal)
        button3.setBackgroundImage(UIImage(named: "us"), for: .normal)
        
        button1.layer.borderWidth = 1
        button2.layer.borderWidth = 1
        button3.layer.borderWidth = 1
        
        button1.layer.borderColor = UIColor.lightGray.cgColor
        button2.layer.borderColor = UIColor.lightGray.cgColor
        button3.layer.borderColor = UIColor.lightGray.cgColor


    }
    
    private func constraint() {
        view.addSubview(button1)
        view.addSubview(button2)
        view.addSubview(button3)
        
        button1.translatesAutoresizingMaskIntoConstraints = false
        button2.translatesAutoresizingMaskIntoConstraints = false
        button3.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate([
            button1.topAnchor.constraint(equalTo: view.topAnchor, constant: 70),
            button1.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            button1.widthAnchor.constraint(equalToConstant: 200),
            button1.heightAnchor.constraint(equalToConstant: 100),
            
            button2.topAnchor.constraint(equalTo: button1.bottomAnchor, constant: 15),
            button2.centerXAnchor.constraint(equalTo: button1.centerXAnchor),
            button2.widthAnchor.constraint(equalToConstant: 200),
            button2.heightAnchor.constraint(equalToConstant: 100),
            
            button3.topAnchor.constraint(equalTo: button2.bottomAnchor, constant: 25),
            button3.centerXAnchor.constraint(equalTo: button2.centerXAnchor),
            button3.widthAnchor.constraint(equalToConstant: 200),
            button3.heightAnchor.constraint(equalToConstant: 100),
            
        ])
        
    }

}

