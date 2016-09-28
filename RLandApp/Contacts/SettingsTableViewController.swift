//
//  SettingsTableViewController.swift
//  Campus Buddy
//
//  Created by Kush Taneja on 26/09/16.
//  Copyright © 2016 Kush Taneja. All rights reserved.
//

import UIKit

class SettingsTableViewController: UITableViewController {
    
    


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

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 3
    }
    
    @IBAction func RateUS(sender: AnyObject) {
        
        
        
        
    }
    @IBAction func FbLink(sender: AnyObject) {
      UIApplication.sharedApplication().openURL(NSURL(string :"https://www.facebook.com/mdgiitr/")!)
        
    }
    
    @IBAction func GitLink(sender: AnyObject) {
        
        UIApplication.sharedApplication().openURL(NSURL(string :"https://github.com/sdsmdg")!)
    }
    
   
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
      let cell = tableView.dequeueReusableCellWithIdentifier("SettingCell", forIndexPath: indexPath)
        switch indexPath.row {
        case 0:
            cell.textLabel?.text = "Share with Friends"
        case 1:
            cell.textLabel?.text = "Open the Website"
        case 2:
            cell.textLabel?.text = "Disclaimer"
            
        default:
            cell.textLabel?.text = ""
            
        }
        cell.textLabel?.textAlignment = .Center
        return cell
        
    }


    @IBAction func Done(sender: UIBarButtonItem) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    override func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        switch  indexPath.row {
        case 0:
           UIApplication.sharedApplication().openURL(NSURL(string :"https://mdg.sdslabs.co/")!)
        case 1:
            UIApplication.sharedApplication().openURL(NSURL(string :"https://mdg.sdslabs.co/")!)
        case 2:
            let  Alert = UIAlertController(title: "Disclaimer", message:
                "This is a test app made by a student's group and we don't take any responsibility for any information present in the app." + "\n" + "However, we welcome any feedback.", preferredStyle: UIAlertControllerStyle.Alert)
            
            
            Alert.addAction(UIAlertAction(title: "Mail us", style: .Default , handler: { action in
                UIApplication.sharedApplication().openURL(NSURL(string :"mailto:sdsmobilelabs@gmail.com")!)
                
            }))
            
            Alert.addAction(UIAlertAction(title: "Academic Calendar", style: .Default , handler: { action in
                UIApplication.sharedApplication().openURL(NSURL(string :"http://www.iitr.ac.in/academics/pages/Academic_Calender.html")!)
                
            }))
            Alert.addAction(UIAlertAction(title: "Telephone Directory", style: .Default , handler: { action in
                UIApplication.sharedApplication().openURL(NSURL(string :"http://www.iitr.ac.in/Main/pages/Telephone+Telephone_Directory.html")!)
                
            }))
            Alert.addAction(UIAlertAction(title: "Cancel", style: .Destructive , handler: { action in

                
            }))
            
            self.presentViewController(Alert, animated: true, completion: nil)
        
        
        
        default:
            UIApplication.sharedApplication().openURL(NSURL(string :"https://mdg.sdslabs.co/")!)
        }
    }
    /*
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("reuseIdentifier", forIndexPath: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}