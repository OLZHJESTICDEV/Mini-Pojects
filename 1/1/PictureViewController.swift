//
//  PictureViewController.swift
//  1
//
//  Created by MAC on 27.06.2022.
//

import UIKit

class PictureViewController: UIViewController {
    let banner = UIImageView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Back", style: .plain, target: self, action: #selector(dismissSelf))

        
        view.addSubview(banner)
        banner.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            //banner.topAnchor.constraint(equalTo: view.topAnchor, constant: 10),
            banner.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10),
            banner.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -10),
            //banner.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            banner.heightAnchor.constraint(equalToConstant: 350),
            banner.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            banner.centerYAnchor.constraint(equalTo: view.centerYAnchor)
        
        ])
    }
    
    @objc private func dismissSelf() {
        dismiss(animated: true, completion: nil)
    }
}
