//
//  pizzaCrustView.swift
//  Pizza
//
//  Created by Talía Carrión Lloria on 06/03/16.
//  Copyright © 2016 Talía Carrión Lloria. All rights reserved.
//

import UIKit

class pizzaCrustView: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var crustPicker: UIPickerView!
    var crustData=["Thin","Crunchy","Thick"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.crustPicker.dataSource = self;
        self.crustPicker.delegate = self;
        
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return crustData.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return crustData[row]
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

