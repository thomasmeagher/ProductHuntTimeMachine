//
//  FilterViewController.swift
//  HuntTimehop
//
//  Created by thomas on 12/28/14.
//  Copyright (c) 2014 thomas. All rights reserved.
//

import UIKit

class FilterViewController: UIViewController {
    
    // MARK: - UI Elements
    @IBOutlet weak var datePicker: UIDatePicker!
    
    var mainVC: ViewController!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.datePicker.minimumDate = Date.toDate(year: 2013, month: 11, day: 24)
        self.datePicker.maximumDate = NSDate()
        self.datePicker.date = self.mainVC.filterDate
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func cancelButtonPressed(sender: UIButton) {
        self.dismissViewControllerAnimated(true, completion: nil)
    }
    
    @IBAction func getPostsButtonPressed(sender: UIButton) {
        self.mainVC.filterDate = self.datePicker.date
        self.dismissViewControllerAnimated(true, completion: nil)
    }

}