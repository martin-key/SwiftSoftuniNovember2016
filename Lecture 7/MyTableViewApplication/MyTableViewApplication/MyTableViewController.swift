//
//  MyTableViewController.swift
//  MyTableViewApplication
//
//  Created by Martin Kuvandzhiev on 1/21/17.
//  Copyright © 2017 Martin Kuvandzhiev. All rights reserved.
//

import UIKit

enum DataType{
    case name, years
}


class MyTableViewController: UITableViewController {

    let presidents:[[DataType:String]] =
        [[.name:"Donald Trump", .years:"2017-"],
         [.name:"Barack Obama", .years:"2009-2017"],
         [.name:"George W. Bush", .years:"2001-2009"],
         [.name:"Bill Clinton", .years:"1993-2001"],
         [.name:"George H. Bush", .years:"1989-1993"],
         [.name:"Ronald Reagan", .years:"1981-1989"],
         [.name:"Jimmy Carter", .years:"1977-1981"],
         [.name:"Gerald Ford", .years:"1974-1977"],
         [.name:"Richard Nixon", .years:"1969-1974"],
         [.name:"Lyndon Johnson", .years:"1963-1969"],
         [.name:"John F. Kennedy", .years:"1961-1963"]]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
         self.clearsSelectionOnViewWillAppear = true

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
        self.tableView.dataSource = self
        self.tableView.delegate = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.presidents.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyCell", for: indexPath)
        
        cell.textLabel?.text = presidents[indexPath.row][.name]
        cell.detailTextLabel?.text = presidents[indexPath.row][.years]
        
        return cell
    }
 
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
    
        let cell = tableView.cellForRow(at: indexPath)
        print(cell?.textLabel?.text ?? "")
        
        self.performSegue(withIdentifier: "DetailsSegueIdentifier", sender: cell?.textLabel?.text)
        
    }


    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.destination is DetailsViewController{
            let destination = segue.destination as! DetailsViewController
            destination.loadViewIfNeeded()
            destination.detailsLabel.text = sender as? String
            
        }
        
    }
 

}




