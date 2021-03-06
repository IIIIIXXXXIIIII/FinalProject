//
//  FirstViewController.swift
//  Final
//
//  Created by user910120 on 5/1/18.
//  Copyright © 2018 user910120. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    var restaurantArray = ["Aloha Salads", "Dennys", "Outback Steakhouse", "Panda Express", "Ramen-Ya", "Wendys"]
    
    var restaurantImageData = [String]()
    
    var restaurantNameData = [String]()
    
    var restaurantDescriptionData = [String]()
    
    @IBOutlet weak var restaurantsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        
        let dict = NSDictionary(contentsOfFile: path!)
        
        restaurantImageData = dict!.object(forKey: "restaurantImage" ) as! [String]
        
        restaurantNameData = dict!.object(forKey: "restaurantName" ) as! [String]
        
        restaurantDescriptionData = dict!.object(forKey: "restaurantDescription" ) as! [String]
        
        self.restaurantsTableView.delegate = self
        self.restaurantsTableView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantNameData.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = restaurantsTableView.dequeueReusableCell(withIdentifier: "cell")
        cell?.textLabel?.text = restaurantNameData[indexPath.row]
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath as IndexPath, animated: true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "mySegue" {
            
            let s1 = segue.destination as! detailViewController
            
            let imageIndex = restaurantsTableView.indexPathForSelectedRow?.row
            
            let descriptionIndex = restaurantsTableView.indexPathForSelectedRow?.row
            
            let titleIndex = restaurantsTableView.indexPathForSelectedRow?.row
            
            s1.imagePass = restaurantImageData[imageIndex!]
            
            s1.descriptionPass = restaurantDescriptionData[descriptionIndex!]
            
            s1.titlePass = restaurantNameData[titleIndex!]
        }
    }
    
}
