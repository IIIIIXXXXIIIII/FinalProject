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
    
    var restaurantImage = [String]()
    
    var restaurantName = [String]()
    
    var restaurantDescription = [String]()
    
    @IBOutlet weak var restaurantsTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = ["Restaurants"]
        
        let path = Bundle.main.path(forResource: "Property List", ofType: "plist")
        
        let dict = NSDictionary(contentsOfFile: path!)
        
        restaurantImageData = dict!.objects(forKey:"restaurantImage") as! [String]
        
        restaurantNameData = dict!.objects(forKeys: "restaurantName") as! [String]
        
        restaurantDescriptionData = dict!.objects(forKeys: "restaurantDescription") as! [String]
        
        self.restaurantsTableView.delegate = self
        self.restaurantsTableView.dataSource = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return restaurantImage.count
        
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
            
            let imageindex =
                tableView.indexPathForSelectedRow?.row
            
            s1.imagepass = restaurantImageData[String]
        }
    }
    
}
