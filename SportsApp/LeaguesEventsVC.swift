//
//  LeaguesEventsVC.swift
//  SportsApp
//
//  Created by Aya on 04/02/2023.
//

import UIKit

class LeaguesEventsVC: UIViewController, UITableViewDelegate,UITableViewDataSource {
 
    var arrEvents = [Event]()
    
    @IBOutlet weak var EventsTableViewCell: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        EventsTableViewCell.delegate = self
        EventsTableViewCell.dataSource =  self
        
        arrEvents.append(Event(title: "Up Coming Events", photos: [UIImage(named: "image")! , UIImage(named: "begin")! , UIImage (named: "Lord")!]))
        
        arrEvents.append(Event(title: "Latest Events", photos: [UIImage(named: "Lord")! , UIImage(named: "begin")! , UIImage (named:"image")!]))
        
        arrEvents.append(Event(title: "Teams", photos: [UIImage(named: "begin")! , UIImage(named: "Lord")! , UIImage (named:"image")!]))
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrEvents.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "IDtableVcell", for: indexPath) as! EventsTableVC
        return cell
    }
    

    
}




struct Event
{
    let title : String
    let photos : [UIImage]
}
