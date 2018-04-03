//
//  ViewController.swift
//  HomeReport
//
//  Created by SGI-Mac7 on 30/03/2018.
//  Copyright © 2018 Slash Global. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    @IBOutlet weak var homeImageView: UIImageView!
    @IBOutlet weak var txtViewHomeDetails: UITextView!
    
    var homeRecords:[Home] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.homeRecords = self.getAllHomeDetails()
        let recordNumberOne = self.homeRecords[0]
        let image = UIImage(data: recordNumberOne.image!)
        self.homeImageView.image = image
        var homeDetails = ""
        let bed = recordNumberOne.bed!
        homeDetails += "No. Of Beds \(bed)"
        let bath = recordNumberOne.bath!
        
        homeDetails += "\nNo. Of bath \(bath)"
        
        let country = recordNumberOne.country!
        
        
         homeDetails += "\nCountry \(country)"
        
        let price = recordNumberOne.price!
        homeDetails += "\nPrice \(price)"
        
        let sqft = recordNumberOne.sqft!
        homeDetails += "\nsqft \(sqft)"
        
        let category = recordNumberOne.category
        
        homeDetails += "\nHomeType \(category!.homeType!)"
        
        let city = recordNumberOne.location
        
        homeDetails += "\nCity \(city!.city!)"
        
        let status = recordNumberOne.status
        let value = status!.isForSale! as Bool

        if value == true{
            
        homeDetails += "\nReady to sale"
            
        }
        else{
         homeDetails += "\nNot Available"
        }
        
        
        self.txtViewHomeDetails.text = homeDetails
        
    }

    @IBAction func homeAction(sender: UIButton) {
        
        
        
    }
    
    
    @IBAction func availHomeAction(sender: UIButton) {
        
        
    }
    
    @IBAction func notAvailHomeAction(sender: UIButton) {
        
        
        
    }
    
    
    
    func getAllHomeDetails() ->[Home]  {
        
        let context = (UIApplication.sharedApplication().delegate as! AppDelegate).managedObjectContext
        var homeArray:[Home] = []
        
        let fetchedRequest = NSFetchRequest(entityName: "Home")
        
        do{
            
            let records = try context.executeFetchRequest(fetchedRequest) as! [Home]
            homeArray = records
            
        }catch let err{
            
            print(err)
            
        }
        
        
        return homeArray
    }
    

}

