//
//  ViewController.swift
//  SorabhSirScreen22Nov
//


import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtViewComment: UITextView!
    @IBOutlet weak var btn6: UIButton!
    @IBOutlet weak var btn5: UIButton!
    @IBOutlet weak var btn4: UIButton!
    @IBOutlet weak var btn3: UIButton!
    @IBOutlet weak var btn2: UIButton!
    @IBOutlet weak var btn1: UIButton!
    @IBOutlet weak var viewRating: UIView!
    @IBOutlet weak var btnSend: UIButton!
  
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        txtViewComment!.layer.borderWidth = 2
        txtViewComment!.layer.borderColor = UIColor.lightGray.cgColor
        txtViewComment!.layer.cornerRadius = 10
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func btn2(_ sender: AnyObject) {
       // btn.setImage(UIImage(named: "yyy.png"), forState: UIControlState.Highlighted)
        btn2.setBackgroundImage(UIImage(named: "OtherBlue.png")!, for: .normal)
        btn1.setBackgroundImage(UIImage(named: "Other.png")!, for: .normal)
        btn3.setBackgroundImage(UIImage(named: "Other.png")!, for: .normal)
        btn4.setBackgroundImage(UIImage(named: "Other.png")!, for: .normal)
        btn5.setBackgroundImage(UIImage(named: "Other.png")!, for: .normal)
        btn6.setBackgroundImage(UIImage(named: "Other.png")!, for: .normal)

    }
    
    @IBAction func btn1(_ sender: AnyObject) {
        btn2.setBackgroundImage(UIImage(named: "Other.png")!, for: .normal)
        btn1.setBackgroundImage(UIImage(named: "OtherBlue.png")!, for: .normal)
        btn3.setBackgroundImage(UIImage(named: "Other.png")!, for: .normal)
        btn4.setBackgroundImage(UIImage(named: "Other.png")!, for: .normal)
        btn5.setBackgroundImage(UIImage(named: "Other.png")!, for: .normal)
        btn6.setBackgroundImage(UIImage(named: "Other.png")!, for: .normal)
    }
    @IBAction func btn3(_ sender: AnyObject) {
        btn2.setBackgroundImage(UIImage(named: "Other.png")!, for: .normal)
        btn1.setBackgroundImage(UIImage(named: "Other.png")!, for: .normal)
        btn3.setBackgroundImage(UIImage(named: "OtherBlue.png")!, for: .normal)
        btn4.setBackgroundImage(UIImage(named: "Other.png")!, for: .normal)
        btn5.setBackgroundImage(UIImage(named: "Other.png")!, for: .normal)
        btn6.setBackgroundImage(UIImage(named: "Other.png")!, for: .normal)
    }

    @IBAction func btn4(_ sender: AnyObject) {
        btn2.setBackgroundImage(UIImage(named: "Other.png")!, for: .normal)
        btn1.setBackgroundImage(UIImage(named: "Other.png")!, for: .normal)
        btn3.setBackgroundImage(UIImage(named: "Other.png")!, for: .normal)
        btn4.setBackgroundImage(UIImage(named: "OtherBlue.png")!, for: .normal)
        btn5.setBackgroundImage(UIImage(named: "Other.png")!, for: .normal)
        btn6.setBackgroundImage(UIImage(named: "Other.png")!, for: .normal)
    }
    @IBAction func btn5(_ sender: AnyObject) {
        btn2.setBackgroundImage(UIImage(named: "Other.png")!, for: .normal)
        btn1.setBackgroundImage(UIImage(named: "Other.png")!, for: .normal)
        btn3.setBackgroundImage(UIImage(named: "Other.png")!, for: .normal)
        btn4.setBackgroundImage(UIImage(named: "Other.png")!, for: .normal)
        btn5.setBackgroundImage(UIImage(named: "OtherBlue.png")!, for: .normal)
        btn6.setBackgroundImage(UIImage(named: "Other.png")!, for: .normal)
    }
    @IBAction func btn6(_ sender: AnyObject) {
        btn2.setBackgroundImage(UIImage(named: "Other.png")!, for: .normal)
        btn1.setBackgroundImage(UIImage(named: "Other.png")!, for: .normal)
        btn3.setBackgroundImage(UIImage(named: "Other.png")!, for: .normal)
        btn4.setBackgroundImage(UIImage(named: "Other.png")!, for: .normal)
        btn5.setBackgroundImage(UIImage(named: "Other.png")!, for: .normal)
        btn6.setBackgroundImage(UIImage(named: "OtherBlue.png")!, for: .normal)
    }
    @IBAction func btnSend(_ sender: AnyObject) {
        
    }

}

