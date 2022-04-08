//
//  PlanetListTableViewController.swift
//  Solor_System
//
//  Created by Tasuku Yamamoto on 4/7/22.
//

import UIKit

class PlanetListTableViewController: UITableViewController {

    // MARK: - Table view Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return PlanetController.planets.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "planetCell", for: indexPath)

        let planet = PlanetController.planets[indexPath.row]
        cell.imageView?.image = UIImage(named: planet.planetImageName)
        cell.textLabel?.text = planet.planetName
        cell.detailTextLabel?.text = "Planet \(indexPath.row + 1)"
        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //IIDOO
        //Identifier, IndexPath, Destination, Object to Send, Object to Recieved
        
        //Identifier
        if segue.identifier == "toDetailVC"{
            //IndexPath, Destination
            guard let indexPath = tableView.indexPathForSelectedRow,
                  let destination = segue.destination as? PlanetDetailViewController
                    else { return }
            
            let planetToSend = PlanetController.planets[indexPath.row]
            destination.planet = planetToSend
        }
    }
    
}//End of class
