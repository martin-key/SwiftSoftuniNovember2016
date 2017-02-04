//
//  TableViewController.swift
//  AmericanPresidents
//
//  Created by Martin Kuvandzhiev on 1/21/17.
//  Copyright © 2017 Martin Kuvandzhiev. All rights reserved.
//

import UIKit

enum keys:String{
    case name = "name"
    case years = "years"
}
class TableViewController: UITableViewController {
    
    let presidents:[[keys: String]] = [[.name:"Donald Trump", .years:"2017-"],
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
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int { // number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        let numberOfItems = self.presidents.count
        return numberOfItems
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath)
        cell.textLabel?.text = presidents[indexPath.row][.name]
        cell.detailTextLabel?.text = presidents[indexPath.row][.years]
        return cell
    }
    

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedCell = tableView.cellForRow(at: indexPath) // get the selected cell
        print(selectedCell?.textLabel?.text ?? "") // print the textLabel string
        tableView.deselectRow(at: indexPath, animated: true) // deselect the selected cell
        
        let detailViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "PresidentDetailViewController")
        self.navigationController?.pushViewController(detailViewController, animated: true)
    }
    
    
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.destination is DetailViewController{
            let destination = segue.destination as! DetailViewController
//            destination.presidentImage.image = UIImage(named: presidentImageName)
            destination.titleLabel.text = self.presidents[self.tableView.indexPathForSelectedRow!.row][.name]
            destination.textView.text = "some text from somewhere"
        }
    }
 

}
