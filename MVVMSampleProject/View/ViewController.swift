//
//  ViewController.swift
//  MVVMSampleProject
//
//  Created by Balaji Pandian on 23/06/20.
//  Copyright © 2020 Balaji Pandian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tableview:UITableView!
    
    var myViewModel : ViewModel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.myViewModel = ViewModel(vc: self)
        
        self.myViewModel.requestAPI{ (countryList) in
//            DispatchQueue.main.async {
//                self.tableview.reloadData()
//            }
        }
    }
}

extension ViewController : UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.myViewModel.myModel.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "CountryTableViewCell") as! CountryTableViewCell
        let countryModel =  self.myViewModel.myModel[indexPath.row]
        cell.loadWithModel(model:countryModel)
        
        return cell
    }
}


