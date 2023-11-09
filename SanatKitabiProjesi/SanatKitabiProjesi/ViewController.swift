//
//  ViewController.swift
//  SanatKitabiProjesi
//
//  Created by ayhanakkaya on 7.11.2023.
//

import UIKit

class ViewController: UIViewController,UITableViewDelegate,UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
        
        navigationController?.navigationBar.topItem?.rightBarButtonItem=UIBarButtonItem(barButtonSystemItem: .add, target: self, action: #selector(addButtonClicked))
    }
    
    @objc func addButtonClicked(){
        performSegue(withIdentifier: "toDetailsVC", sender: nil)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = "test"
        return cell
    }
    
    
    
    
    


}

