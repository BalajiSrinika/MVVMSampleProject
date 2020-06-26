//
//  CountryTableViewCell.swift
//  MVVMSampleProject
//
//  Created by Balaji Pandian on 23/06/20.
//  Copyright © 2020 Balaji Pandian. All rights reserved.
//

import UIKit

class CountryTableViewCell: UITableViewCell {
    
    @IBOutlet weak var countryLbl : UILabel!
    @IBOutlet weak var captialLbl : UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    
    func loadWithModel(model : CountryElement){
        countryLbl.text = model.name
        captialLbl.text = model.capital
    }
    
}
