//
//  MapCardCell.swift
//  SonycApp
//
//  Created by Modou Niang on 8/20/20.
//  Copyright © 2020 Vanessa Johnson. All rights reserved.
//

import UIKit
import CoreData
import AVFoundation

class MapCardCell: UITableViewCell {
    
    @IBOutlet weak var cardView: UIView!
    
    @IBOutlet weak var logoImage: UIImageView!

    @IBOutlet weak var addressLabel: UILabel!

    @IBOutlet weak var apiLabel: UILabel!
    
    @IBOutlet weak var confirmButton: UIButton!
    //Varaibles to store report incident for the card
    var userLocation: String!
    var reportLocation: String!
    var cityLocation: String!

    
    
    @IBAction func confirm(_ sender: Any) {
        
        print("Confirm Clicked")
        
        //Updating CoreData associated with the current Report
        
        savingData()
    }
    
    
    func configure(
                   address: String,
                   currLocation: String,
        city: String
                   ) {
        
        //Setting labels to update each report
        userLocation = currLocation
        reportLocation = String(address)
        cityLocation = String(city)
        
        //Setting labels to update each report
        addressLabel.text = String(address)
        apiLabel.text = String(city)

        logoImage.image = wordsToImage[newTask.value(forKey: "noiseType") as? String ?? "other"]
        //Fitting text to label
        apiLabel.sizeToFit()
        addressLabel.sizeToFit()
        
        //Styling the card
        cardView.layer.shadowColor = UIColor.gray.cgColor
        cardView.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        cardView.layer.shadowOpacity = 1.0
        cardView.layer.masksToBounds = false
        cardView.layer.cornerRadius = 5.0
        
        confirmButton.layer.cornerRadius = 15.0
    }
    
}
