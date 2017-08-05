//
//  TopTableViewController.swift
//  SwiftPokemonTable
//
//  Created by Yoshiki Nishioka on 2017/08/05.
//  Copyright © 2017年 Yoshiki Nishioka. All rights reserved.
//

import UIKit

class TopTableViewController: UITableViewController {

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

    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 1
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        cell.textLabel?.text = "日本のポケモン"
        cell.detailTextLabel?.text = "地図を見る"
        cell.imageView?.image = UIImage(named: "japan.png")
        
        return cell
    }
 
    
    override func tableView(_ tableView: UITableView, didSelectRowAt
        indexPath: IndexPath) {
        self.navigationController!.pushViewController(self.storyboard!.instantiateViewController(withIdentifier: "next"),animated: true)
    }
 
    

}
