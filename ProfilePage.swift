//
//  ViewController.swift
//  ThatsRideDriverProfileScreen
//
//  Created by Raghu Bansal on 10/12/16.
//  Copyright © 2016 XtreemSolution. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    //Outlets for TextFields.
    @IBOutlet weak var txtFieldName: UITextField!
    @IBOutlet weak var txtFieldSex: UITextField!
    @IBOutlet weak var txtFieldAge: UITextField!
    @IBOutlet weak var txtFieldMobile: UITextField!
    @IBOutlet weak var txtFieldEmail: UITextField!
    @IBOutlet weak var txtFieldLicense: UITextField!
    @IBOutlet weak var txtFieldExpiryDate: UITextField!
    
    //Collection outlet.
    @IBOutlet var txtFieldCollection: [UITextField]!
    // Button Outlet and Action.
    @IBOutlet weak var btnEditProfileOutlet: UIButton!
    @IBAction func btnEditProfile(_ sender: AnyObject) {
       
        if btnEditProfileOutlet.titleLabel?.text == "Edit Profile" {
            for txtFields in txtFieldCollection {
                txtFields.isEnabled = true
                txtFields.layer.borderColor = UIColor.lightGray.cgColor
                txtFields.layer.borderWidth = 1.0
                btnEditProfileOutlet.setTitle("Save", for: .normal)
                txtFields.textColor = UIColor.black
                txtFields.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1.0)


            }
        } else {
            for txtFields in txtFieldCollection {
                txtFields.isEnabled = false
                //txtFields.layer.borderColor = UIColor.lightGray.cgColor
                txtFields.layer.borderWidth = 0
                btnEditProfileOutlet.setTitle("Edit Profile", for: .normal)
                txtFields.backgroundColor = UIColor.white

                


            }

        }
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // TextField Enabled False.
        for txtFields in txtFieldCollection {
        txtFields.isEnabled = false
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

