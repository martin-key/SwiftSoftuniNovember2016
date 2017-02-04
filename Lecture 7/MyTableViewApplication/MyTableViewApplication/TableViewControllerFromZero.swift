//
//  TableViewControllerFromZero.swift
//  MyTableViewApplication
//
//  Created by Martin Kuvandzhiev on 1/21/17.
//  Copyright © 2017 Martin Kuvandzhiev. All rights reserved.
//

import UIKit

class TableViewControllerFromZero: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section:\(section)"
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCellIdentifier", for: indexPath)
        
        cell.textLabel?.text = "section:\(indexPath.section),row:\(indexPath.row)"
        
        return cell
    }
    


}
