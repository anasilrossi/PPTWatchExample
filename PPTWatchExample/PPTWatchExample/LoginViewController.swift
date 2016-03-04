//
//  LoginViewController.swift
//  PPTWatchExample
//
//  Created by Analia on 3/4/16.
//  Copyright © 2016 Analia Rossi. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController
{

    @IBOutlet var lbl_Title: UILabel!
    @IBOutlet var lbl_name: UILabel!
    @IBOutlet var txf_name: UITextField!
    @IBOutlet var btn_accept: UIButton!
    override func viewDidLoad()
    {
        super.viewDidLoad()
        configureView()
        configureLabel()
    }
    
    func configureView()
    {
        view.backgroundColor = UIColor.lightGrayColor()
    }
    
    func configureLabel()
    {
        lbl_Title.text = "Welcome to the Watch Example"
        lbl_name.text = "What is you name?"
        txf_name.keyboardType = UIKeyboardType.Default
    }

   
    @IBAction func didPressAceptButton(sender: UIButton)
    {
        let vc:ActivityViewController = UIStoryboard(name: "Main", bundle: NSBundle.mainBundle()).instantiateViewControllerWithIdentifier("ActivityViewController") as! ActivityViewController
        vc.name = lbl_name.text!
        navigationController?.pushViewController(vc, animated: true)
    }

}

