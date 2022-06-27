//
//  ViewController.swift
//  1
//
//  Created by MAC on 27.06.2022.
//

import UIKit

class ViewController: UIViewController {

    var pictures = [String]()
    
    var tableView: UITableView = {
       let tableView = UITableView()
        tableView.register(PictureTableViewCell.self,
                       forCellReuseIdentifier: PictureTableViewCell.identifier)
       return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
        configure()
            
        let fileManager = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fileManager.contentsOfDirectory(atPath: path)
        
        for item in items {
            if item.hasPrefix("emoji_"){
                pictures.append(item)
            }
        }
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    
    private func configure() {
        view.addSubview(tableView)
        tableView.backgroundColor = .systemBackground
        title = "Emoji List"
        navigationController?.navigationBar.prefersLargeTitles = true
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pictures.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PictureTableViewCell.identifier, for: indexPath) as! PictureTableViewCell
        cell.textLabel?.text = pictures[indexPath.row]
        return cell
    }
        
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = PictureViewController()
        let navVC = UINavigationController(rootViewController: vc)
        vc.banner.image = UIImage(named: pictures[indexPath.row])
        vc.title = "\(indexPath.row + 1) / \(pictures.count)"
        navVC.modalPresentationStyle = .fullScreen
        
        present(navVC, animated: true)
    }
    
    
}
