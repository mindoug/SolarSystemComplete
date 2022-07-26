//
//  PlanetTableViewController.swift
//  SolarSystem
//
//  Created by Mindy Douglas on 7/21/22.
//

import UIKit

class PlanetTableViewController: UITableViewController {

    var planets = [Planet]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        planets = Planet.loadPlanets()

    }

    // MARK: - Table view data source


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return planets.count
    }


    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // step 1 dequeue the cell
        let cell = tableView.dequeueReusableCell(withIdentifier: "PlanetCell", for: indexPath) as! PlanetTableViewCell

        // fetch the model
        let planet = planets[indexPath.row]
        
        // Configure the cell...
        cell.update(with: planet)
        return cell
    }
   
// table view delegate methods
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //get planet
        let planet = planets[indexPath.row]
        performSegue(withIdentifier: "planetSegue", sender: planet)
        tableView.deselectRow(at: indexPath, animated: true)
    }
    // prepare for segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailViewController, let sender = sender as? Planet {
            destination.planet = sender
        }
    }
}
