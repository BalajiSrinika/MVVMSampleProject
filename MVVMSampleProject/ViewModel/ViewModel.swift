//
//  ViewModel.swift
//  MVVMSampleProject
//
//  Created by Balaji Pandian on 23/06/20.
//  Copyright © 2020 Balaji Pandian. All rights reserved.
//

import Foundation


class ViewModel  {
    
    //step 1
    var vc : ViewController!
    
    init(vc:ViewController) {
        self.vc = vc
    }
    var myModel = [CountryElement]()
    

    //step 2
    /// Request API
    func requestAPI(completionHandler: @escaping ([CountryElement]) -> Void) {
        let url = URL(string: "https://restcountries.eu/rest/v2/name/united")!
        
        let task = URLSession.shared.dataTask(with: url, completionHandler: { (data, response, error) in
            if let error = error {
                print("Error with fetching : \(error)")
                return
            }
            guard let httpResponse = response as? HTTPURLResponse,
                (200...299).contains(httpResponse.statusCode) else {
                    print("Error with the response, unexpected status code: \(response!)")
                    return
            }
            
            if let data = data {
                let decoder = JSONDecoder()
                do{
                    self.myModel = try decoder.decode([CountryElement].self, from: data)
                    completionHandler(self.myModel)
                    DispatchQueue.main.async {
                        self.vc.tableview.reloadData()
                    }
                    
                } catch (let err) {
                    print("Error:\(err)")
                    
                }
            }
        })
        task.resume()
    }
}


