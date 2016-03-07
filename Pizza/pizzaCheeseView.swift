//
//  pizzaCheeseView.swift
//  Pizza
//
//  Created by Talía Carrión Lloria on 06/03/16.
//  Copyright © 2016 Talía Carrión Lloria. All rights reserved.
//

import UIKit

class pizzaCheeseView: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate  {

    @IBOutlet weak var cheesePicker: UIPickerView!
    var cheeseData=["Mozzarella","Cheddar","Parmesan","No cheese"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.cheesePicker.dataSource = self;
        self.cheesePicker.delegate = self;
        
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
        return cheeseData.count;
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return cheeseData[row]
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
