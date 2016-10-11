//
//  DetailViewController.swift
//  TableViewApplication
//
//  Created by Aaron on 03/08/2015.
//  Copyright © 2015 Aaron. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var DetailImageview: UIImageView!
    @IBOutlet weak var DetailTitle: UILabel!
    @IBOutlet weak var DetailDescription: UILabel!
    
    var SentData1:String!
    var SentData2:String!
    var SentData3:String!
    
    @IBOutlet weak var YearBuilt: UILabel!
    @IBOutlet weak var Height: UILabel!
    @IBOutlet weak var Cost: UILabel!
    @IBOutlet weak var Record: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        DetailTitle.text = SentData1
        DetailDescription.text = SentData2
        
        DetailImageview.image = UIImage(named: SentData3)
        
        
        if DetailTitle.text == "Burj Khalifa" {
            
            YearBuilt.text = "Year Built: 2009"
            Height.text = "Height: 2722 ft"
            Cost.text = "Cost: $1.5 Billion"
            Record.text = "Record: Since 2010"
            
        }
        
        if DetailTitle.text == "Eiffel Tower" {
            
            Height.text = "Height: 986 ft"
            YearBuilt.text = "Year Built: 1889"
            Cost.text = "Cost: $1.5 million"
            Record.text = "Record: 1889 to 1930"
            
        }
        
        if DetailTitle.text == "Empire State Building" {
            
            Height.text = "Height: 1454 ft"
            YearBuilt.text = "Year Built: 1931"
            Cost.text = "Cost: $40 million"
            Record.text = "Record: 1931 to 1970"
            
        }
        
        if DetailTitle.text == "Kingdom Tower" {
            
            Height.text = "Height: 3304 ft"
            YearBuilt.text = "Year Built: 2019"
            Cost.text = "Cost: $1.23 billion"
            Record.text = "Record: N/A"
            
        }
        
        if DetailTitle.text == "Taipei 101" {
            
            Height.text = "Height: 1671 ft"
            YearBuilt.text = "Year Built: 2004"
            Cost.text = "Cost: $1.9 billion"
            Record.text = "Record: 2004 to 2009"
            
        }
        
        
        

        // Do any additional setup after loading the view.
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
