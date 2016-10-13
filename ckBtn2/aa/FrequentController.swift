//
//  FrequentController.swift
//  ThatsRide
//
//  Created by Raghu Bansal on 10/7/16.
//  Copyright © 2016 Sourabh Sharma. All rights reserved.
//

import UIKit

class FrequentController: UIViewController {
    var seatCounterMon = 0
    var seatCounterTues = 0
    var seatCounterWed = 0
    var seatCounterThurs = 0
    var seatCounterFri = 0
    var seatCounterSat = 0
    var seatCounterSun = 0


    @IBOutlet var btnCollectionPlus: [UIButton]!
    @IBOutlet var btnCollectionCheckBox: [UIButton]!
    @IBOutlet var btnCollectionMinus: [UIButton]!
    
    @IBOutlet weak var btnMinusMondayOutlet: UIButton!
    @IBOutlet weak var btnMinusTuesdayOutlet: UIButton!
    @IBOutlet weak var btnMinusWednesdayOutlet: UIButton!
    @IBOutlet weak var btnMinusThursdayOutlet: UIButton!
    @IBOutlet weak var btnMinusFridayOutlet: UIButton!
    @IBOutlet weak var btnMinusSaturdayOutlet: UIButton!
    @IBOutlet weak var btnMinusSundayOutlet: UIButton!
    
    @IBOutlet weak var lblMondaySeats: UILabel!
    @IBOutlet weak var lblTuesdaySeats: UILabel!
    @IBOutlet weak var lblWednesdaySeats: UILabel!
    @IBOutlet weak var lblThursdaySeats: UILabel!
    @IBOutlet weak var lblFridaySeats: UILabel!
    @IBOutlet weak var lblSaturdaySeats: UILabel!
    @IBOutlet weak var lblSundaySeats: UILabel!
    @IBOutlet weak var btnOk: UIButton!
    @IBOutlet weak var btnCancel: UIButton!
    
    // Outlets for view holding plus, minus buttons and label.
    @IBOutlet weak var viewMonday: UIView!
    @IBOutlet weak var viewTuesday: UIView!
    @IBOutlet weak var viewWednesday: UIView!
    @IBOutlet weak var viewMThursday: UIView!
    @IBOutlet weak var viewFriday: UIView!
    @IBOutlet weak var viewSaturday: UIView!
    @IBOutlet weak var viewSunday: UIView!
    
        
    @IBOutlet var btnCollection: [UIButton]!
    
    // Code for check box which performs action on tapping.
    @IBAction func btnCheckMonday(_ sender: UIButton) {
        if sender.imageView?.image == UIImage(named: "uncheck"){
            sender.setImage(UIImage(named: "checkedicon"), for: UIControlState())
            self.viewMonday.isHidden = false
            
            

        } else {
            sender.setImage(UIImage(named: "uncheck"), for: UIControlState())
            self.viewMonday.isHidden = true
            seatCounterMon = 0
            lblMondaySeats.text = String (seatCounterMon)

        }
    }
    
    @IBAction func btnCheckTuesday(_ sender: UIButton) {
        if sender.imageView?.image == UIImage(named: "uncheck"){
            sender.setImage(UIImage(named: "checkedicon"), for: UIControlState())
            self.viewTuesday.isHidden = false

            
            
        } else {
            sender.setImage(UIImage(named: "uncheck"), for: UIControlState())
            self.viewTuesday.isHidden = true
            seatCounterTues = 0
            lblTuesdaySeats.text = String (seatCounterTues)
        }

    }
    @IBAction func btnCheckWednesday(_ sender: UIButton) {
        if sender.imageView?.image == UIImage(named: "uncheck"){
            sender.setImage(UIImage(named: "checkedicon"), for: UIControlState())
            self.viewWednesday.isHidden = false
            
            
        } else {
            sender.setImage(UIImage(named: "uncheck"), for: UIControlState())
            self.viewWednesday.isHidden = true
            seatCounterWed = 0
            lblWednesdaySeats.text = String (seatCounterWed)

        }
    }
    @IBAction func btnCheckThursday(_ sender: UIButton) {
        if sender.imageView?.image == UIImage(named: "uncheck"){
            sender.setImage(UIImage(named: "checkedicon"), for: UIControlState())
            self.viewMThursday.isHidden = false
            
            
        } else {
            sender.setImage(UIImage(named: "uncheck"), for: UIControlState())
            self.viewMThursday.isHidden = true
            seatCounterThurs = 0
            lblThursdaySeats.text = String (seatCounterThurs)

        }
    }
    @IBAction func btnCheckFriday(_ sender: UIButton) {
        if sender.imageView?.image == UIImage(named: "uncheck"){
            sender.setImage(UIImage(named: "checkedicon"), for: UIControlState())
            self.viewFriday.isHidden = false
            
        } else {
            sender.setImage(UIImage(named: "uncheck"), for: UIControlState())
            self.viewFriday.isHidden = true
            seatCounterFri = 0
            lblFridaySeats.text = String (seatCounterFri)
            
        }

    }
    @IBAction func btnCheckSaturday(_ sender: UIButton) {
        if sender.imageView?.image == UIImage(named: "uncheck"){
            sender.setImage(UIImage(named: "checkedicon"), for: UIControlState())
            self.viewSaturday.isHidden = false
            
        } else {
            sender.setImage(UIImage(named: "uncheck"), for: UIControlState())
            self.viewSaturday.isHidden = true
            seatCounterSat = 0
            lblSaturdaySeats.text = String (seatCounterSat)
            
        }

    }
    @IBAction func btnCheckSunday(_ sender: UIButton) {
        if sender.imageView?.image == UIImage(named: "uncheck"){
            sender.setImage(UIImage(named: "checkedicon"), for: UIControlState())
            self.viewSunday.isHidden = false
            
        } else {
            sender.setImage(UIImage(named: "uncheck"), for: UIControlState())
            self.viewSunday.isHidden = true
            seatCounterSun = 0
            lblSundaySeats.text = String (seatCounterSun)
            
        }

    }
    
    @IBAction func btnOkAction(_ sender: AnyObject) {
    }
    @IBAction func btnCancelAction(_ sender: AnyObject) {
    }
    
   
    
    @IBAction func btnMinusMon(_ sender: AnyObject) {
        if seatCounterMon == 0 {
            btnMinusMondayOutlet.isEnabled = false
        } else {
        if seatCounterMon > 0 {
            seatCounterMon -= 1
            lblMondaySeats.text = String(seatCounterMon)
           // btnMinusMondayOutlet.isEnabled = true

            }
        }
        
    }
    @IBAction func btnMinusTues(_ sender: AnyObject) {
        if seatCounterTues == 0 {
            btnMinusTuesdayOutlet.isEnabled = false
        } else {
        if seatCounterTues > 0 {
            seatCounterTues -= 1
            lblTuesdaySeats.text = String(seatCounterTues)
            }
        }
    }
    @IBAction func btnMinusWed(_ sender: AnyObject) {
        if seatCounterWed == 0 {
            btnMinusWednesdayOutlet.isEnabled = false
        } else {
        if seatCounterWed > 0 {
            seatCounterWed -= 1
            lblWednesdaySeats.text = String(seatCounterWed)
            }
        }
    }
    @IBAction func btnMinusThurs(_ sender: AnyObject) {
        if seatCounterThurs == 0 {
            btnMinusThursdayOutlet.isEnabled = false
        } else {
        if seatCounterThurs > 0 {
            seatCounterThurs -= 1
            lblThursdaySeats.text = String(seatCounterThurs)
            }
        }
    }
    @IBAction func btnMinusFri(_ sender: AnyObject) {
        if seatCounterFri == 0 {
            btnMinusFridayOutlet.isEnabled = false
        } else {
        if seatCounterFri > 0 {
            seatCounterFri -= 1
            lblFridaySeats.text = String(seatCounterFri)
            }
        }
    }
    @IBAction func btnMinusSat(_ sender: AnyObject) {
        if seatCounterSat == 0 {
            btnMinusSaturdayOutlet.isEnabled = false
        } else {
        if seatCounterSat > 0 {
            seatCounterSat -= 1
            lblSaturdaySeats.text = String(seatCounterSat)
            }
        }
    }
    @IBAction func btnMinusSun(_ sender: AnyObject) {
        if seatCounterSun == 0 {
            btnMinusSundayOutlet.isEnabled = false
        } else {
        if seatCounterSun > 0 {
            seatCounterSun -= 1
            lblSundaySeats.text = String(seatCounterSun)
            }
        }
    }
    @IBAction func btnPlusMon(_ sender: AnyObject) {
        if seatCounterMon < 4 {
            seatCounterMon += 1
            lblMondaySeats.text = String(seatCounterMon)
            btnMinusMondayOutlet.isEnabled = true

        }

    }
    @IBAction func btnPlusTues(_ sender: AnyObject) {
        if seatCounterTues < 4 {
            seatCounterTues += 1
            lblTuesdaySeats.text = String(seatCounterTues)
            btnMinusTuesdayOutlet.isEnabled = true

        }

    }
    @IBAction func btnPlusWed(_ sender: AnyObject) {
        if seatCounterWed < 4 {
            seatCounterWed += 1
            lblWednesdaySeats.text = String(seatCounterWed)
            btnMinusWednesdayOutlet.isEnabled = true

        }

    }
    @IBAction func btnPlusThurs(_ sender: AnyObject) {
        if seatCounterThurs < 4 {
            seatCounterThurs += 1
            lblThursdaySeats.text = String(seatCounterThurs)
            btnMinusThursdayOutlet.isEnabled = true

        }

    }
    @IBAction func btnPlusFri(_ sender: AnyObject) {
        if seatCounterFri < 4 {
            seatCounterFri += 1
            lblFridaySeats.text = String(seatCounterFri)
            btnMinusFridayOutlet.isEnabled = true

        }

    }
    @IBAction func btnPlusSat(_ sender: AnyObject) {
        if seatCounterSat < 4 {
            seatCounterSat += 1
            lblSaturdaySeats.text = String(seatCounterSat)
            btnMinusSaturdayOutlet.isEnabled = true

        }

    }
    @IBAction func btnPlusSun(_ sender: AnyObject) {
        if seatCounterSun < 4 {
            seatCounterSun += 1
            lblSundaySeats.text = String(seatCounterSun)
            btnMinusSundayOutlet.isEnabled = true

        }

    }
    
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.viewMonday.isHidden = true
        self.viewTuesday.isHidden = true
        self.viewWednesday.isHidden = true
        self.viewMThursday.isHidden = true
        self.viewFriday.isHidden = true
        self.viewSaturday.isHidden = true
        self.viewSunday.isHidden = true
        
        // CheckBox Border.
       
        for btnCheckBox in btnCollectionCheckBox {
            btnCheckBox.layer.borderColor = UIColor.lightGray.cgColor
            btnCheckBox.layer.borderWidth = 1.0
        }
        // Buttons corner radius.
        
        for btn in btnCollection {
            btn.layer.cornerRadius = 4.0
            btn.layer.masksToBounds = true
        }
        // Minus Button corner radius.
        for btnMinus in btnCollectionMinus {
            let path = UIBezierPath(roundedRect:btnMinus.bounds,
                                    byRoundingCorners:[.topLeft, .bottomLeft],
                                    cornerRadii: CGSize(width: 5, height:  5))
            
            let maskLayer = CAShapeLayer()
            
            maskLayer.path = path.cgPath
            btnMinus.layer.mask = maskLayer
        }
        // Plus Button corner radius.
        for btnPlus in btnCollectionPlus {
            let path = UIBezierPath(roundedRect:btnPlus.bounds,
                                    byRoundingCorners:[.topRight, .bottomRight],
                                    cornerRadii: CGSize(width: 5, height:  5))
            
            let maskLayer = CAShapeLayer()
            
            maskLayer.path = path.cgPath
            btnPlus.layer.mask = maskLayer
        }

        
        /*let rectShape = CAShapeLayer()
        rectShape.bounds = self.btnCheckMondayOutlet.frame
        rectShape.position = self.btnCheckMondayOutlet.center
        rectShape.path = UIBezierPath(roundedRect: self.btnCheckMondayOutlet.bounds, byRoundingCorners: [.bottomLeft , .topLeft], cornerRadii: CGSize(width: 20, height: 20)).cgPath
        
        //self.btnCheckMondayOutlet.layer.backgroundColor = UIColor.greenColor().CGColor
        //Here I'm masking the textView's layer with rectShape layer
        self.btnCheckMondayOutlet.layer.mask = rectShape*/
        
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
   

}
