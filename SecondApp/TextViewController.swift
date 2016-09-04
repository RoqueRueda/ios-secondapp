//
//  TextViewController.swift
//  SecondApp
//
//  Created by Roque Rueda on 01/09/16.
//  Copyright © 2016 ST. All rights reserved.
//

import UIKit

class TextViewController : UIViewController {
    
    @IBOutlet weak var mytitle       : UILabel!
    @IBOutlet weak var contentRef    : UITextView!
    
    @IBAction func pleaseGoBack(){
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    var titleString : String?
    var contentString : String?

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.mytitle.text = titleString
        self.contentRef.text = contentString
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
