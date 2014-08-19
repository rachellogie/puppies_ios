//
//  IndexViewController.swift
//  Simple Puppies
//
//  Created by Rachel Logie on 8/18/14.
//  Copyright (c) 2014 Rachel Logie. All rights reserved.
//

import UIKit

class IndexViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView: UITableView!
    let images = ["puppy1.jpg", "puppy2.jpg", "puppy3.jpg", "kitten1.jpg", "meatball.jpg"]

    override func viewDidLoad() {
        super.viewDidLoad()
        println("hello")
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(tableView: UITableView!, numberOfRowsInSection section: Int) -> Int {
        //this is the number of rows in your table
        return self.images.count
    }
    
    func tableView(tableView: UITableView!, cellForRowAtIndexPath indexPath: NSIndexPath!) -> UITableViewCell! {
        
        let cell: UITableViewCell = tableView.dequeueReusableCellWithIdentifier("myCell") as UITableViewCell
        
        let imageName = images[indexPath.row]
        cell.textLabel.text = imageName
        
        cell.imageView.image = UIImage(named: imageName)
        
        return cell
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue!, sender: AnyObject!) {
        
        var myController: ViewController = segue.destinationViewController as ViewController
        var indexPath = self.tableView.indexPathForSelectedRow()
        var imageName = self.images[indexPath.row]
        myController.imageName = imageName
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }


}
