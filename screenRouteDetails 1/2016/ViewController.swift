//
//  ViewController.swift
//  2016
//


import UIKit

class ViewController: UIViewController {
  
    @IBOutlet weak var scrollView: UIScrollView!

    @IBOutlet var txtFieldCollection: [UITextField]!
    @IBOutlet weak var txtStartingDate: UITextField!
    @IBOutlet weak var txtFrequency: UITextField!
    @IBOutlet weak var txtEstimatedFare: UITextField!
    @IBOutlet weak var txtDistance: UITextField!
    @IBOutlet weak var txtFrom: UITextField!
    @IBOutlet weak var txtTo: UITextField!
    @IBOutlet weak var txtExclusiveRide: UITextField!
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // scrolling code.
      //  scrollView.contentInset = UIEdgeInsetsMake(0, 0, 700, 0)

        //txtFieldsCollection
        for txtFields in txtFieldCollection {
            txtFields.isEnabled = false
        }


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

