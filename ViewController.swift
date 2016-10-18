//
//  ViewController.swift
//
//
//  Created by  on 10/12/16.
//  
//

import UIKit

class ViewController: UIViewController {
    var driver = true // This Variable controlles the layout for passenger and driver.
    
    @IBOutlet weak var btnEditImageOutlet: UIButton!
    @IBOutlet weak var driverLicenseDisplayView: UIView!  //Outlet of view driver details,License num & Exp date
    @IBOutlet var txtFieldCollection: [UITextField]!
    @IBOutlet weak var btnEditProfileOutlet: UIButton!
    
    //Outlets for TextFields.
    @IBOutlet weak var txtFieldName: UITextField!
    @IBOutlet weak var txtFieldSex: UITextField!
    @IBOutlet weak var txtFieldAge: UITextField!
    @IBOutlet weak var txtFieldMobile: UITextField!
    @IBOutlet weak var txtFieldEmail: UITextField!
    @IBOutlet weak var txtFieldLicense: UITextField!
    @IBOutlet weak var txtFieldExpiryDate: UITextField!
    
  
    @IBAction func btnEditImage(_ sender: AnyObject) {
        print("Edit Image Button Pressed")
        
    }
    @IBAction func btnEditProfile(_ sender: AnyObject) {
       
        if driver == false {
            if btnEditProfileOutlet.titleLabel?.text == "Edit Profile" {
                for txtFields in txtFieldCollection {
                    txtFields.isEnabled = true
                    txtFields.layer.borderColor = UIColor.lightGray.cgColor
                    txtFields.layer.borderWidth = 1.0
                    btnEditProfileOutlet.setTitle("Save", for: .normal)
                    txtFields.textColor = UIColor.black
                    txtFields.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1.0)
                    btnEditImageOutlet.isHidden = false
                    
                }
            } else {
                for txtFields in txtFieldCollection {
                    txtFields.isEnabled = false
                    //txtFields.layer.borderColor = UIColor.lightGray.cgColor
                    txtFields.layer.borderWidth = 0
                    btnEditProfileOutlet.setTitle("Edit Profile", for: .normal)
                    txtFields.backgroundColor = UIColor.white
                    btnEditImageOutlet.isHidden = true
                    
                    
                    
                    
                }
                
            }
        } else {
                //driverLicenseDisplayView.isHidden = false

            if btnEditProfileOutlet.titleLabel?.text == "Edit Profile" {
                for txtFields in txtFieldCollection {
                    txtFields.isEnabled = true
                    txtFields.layer.borderColor = UIColor.lightGray.cgColor
                    txtFields.layer.borderWidth = 1.0
                    btnEditProfileOutlet.setTitle("Save", for: .normal)
                    txtFields.textColor = UIColor.black
                    txtFields.backgroundColor = UIColor(red: 255, green: 255, blue: 255, alpha: 1.0)
                    btnEditImageOutlet.isHidden = false

                }
            }
            else {
                for txtFields in txtFieldCollection {
                    txtFields.isEnabled = false
                    //txtFields.layer.borderColor = UIColor.lightGray.cgColor
                    txtFields.layer.borderWidth = 0
                    btnEditProfileOutlet.setTitle("Edit Profile", for: .normal)
                    txtFields.backgroundColor = UIColor.white
                    btnEditImageOutlet.isHidden = true

                    
                    
                    
                }
                
            }

            
        }

        }
        
        
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        // Hide condition for driverLicenseDisplay
        if driver == true {
            driverLicenseDisplayView.isHidden = false
        } else {
            driverLicenseDisplayView.isHidden = true

        }
        
        // TextField Enabled False.
        for txtFields in txtFieldCollection {
        txtFields.isEnabled = false
        btnEditImageOutlet.isHidden = true
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

