//
//  ViewController.swift
//  SecondApp
//
//  Created by Roque Rueda on 27/08/16.
//  Copyright © 2016 ST. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableView : UITableView!
    
    let starters : NSDictionary = [
        "White Belt" : ["Concetos Basicos", "Conceptos Basicos II", "Frank no vino", "Navegación Basica"]
    ]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.delegate     = self
        self.tableView.dataSource   = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

extension ViewController: UITableViewDelegate {
    
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        //let currentCell : CustomTVC = tableView.cellForRowAtIndexPath(indexPath) as! CustomTVC
        tableView.deselectRowAtIndexPath(indexPath, animated: true)
        
        let sectionName : String = self.starters.allKeys[indexPath.section] as! String
        let cellTitle   : String = (self.starters[sectionName] as! [String])[indexPath.row]
        
        print("Seleccione celda \(indexPath.row) en la seccion \(cellTitle) ")
        
        let storyBoard : UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let controller : TextViewController = storyBoard.instantiateViewControllerWithIdentifier("textView") as! TextViewController
        
        
        let content = NSLocalizedString(cellTitle, tableName: "fourthClass", comment: cellTitle)
        print(content)
        
        controller.titleString = cellTitle
        controller.contentString = content
        
        //self.presentViewController(controller, animated: true, completion: nil)
        let navigationController : UINavigationController = self.navigationController!
        
        navigationController.pushViewController(controller, animated: true)
    }
    
    func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let sectionName : String = self.starters.allKeys[section] as! String
        
        return sectionName
    }
    
    
//    func tableView(tableView: UITableView, titleForFooterInSection section: Int) -> String? {
//        let sectionName : String = self.starters.allKeys[section] as! String
//        
//        return sectionName
//    }

}

extension ViewController: UITableViewDataSource {
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return starters.allKeys.count
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        let section:String = starters.allKeys[section] as! String
        let array = starters[section]
        
        print(section)
        
        return array!.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("customCell", forIndexPath: indexPath) as! CustomTVC
        let section:String = starters.allKeys[indexPath.section] as! String
        let array = starters.valueForKey(section)
        
        cell.title.text = section
        cell.subtitle.text = array![indexPath.row] as? String
        cell.icon.image = UIImage(named: "pokeball")
        
        return cell
    }
    
}