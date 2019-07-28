//
//  FeedViewController.swift
//  AppFrame
//
//  Created by Akerke Balgabekova on 6/19/19.
//  Copyright © 2019 Akerke Balgabekova. All rights reserved.
//

import UIKit

class FeedViewController: UIViewController {

    var items = [String]()
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addBehaviors(behaviors: [ShowNavigationBarBehavior()])
        dataProvider()
        self.tableView.dataSource = self
        self.tableView.delegate = self
        
    }
    
    func dataProvider() {
        for i in 1...20 {
            items.append("Item \(i)")
        }
    }
    
}

// MARK: - Table View Delegate methods
extension FeedViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Feed", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "SessionSummaryVC")
        navigationController?.pushViewController(controller, animated: true)
        
    }
    
}

// MARK: - Table View Data Source
extension FeedViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.items.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell()
        cell.textLabel?.text = items[indexPath.row]
        return cell

    }
    
    

}
