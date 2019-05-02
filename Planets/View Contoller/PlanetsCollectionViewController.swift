//
//  PlanetsCollectionViewController.swift
//  Planets
//
//  Created by Michael Redig on 5/2/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

class PlanetsCollectionViewController: UICollectionViewController {

	let planetController = PlanetController()
	
    override func viewDidLoad() {
        super.viewDidLoad()

    }

	override func viewWillAppear(_ animated: Bool) {
		super.viewWillAppear(animated)
		
		updateViews()
	}
	
	func updateViews() {
		planetController.updatePlanets()
		collectionView.reloadData()
	}
	

	override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return planetController.planets.count
	}
	
	override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlanetCell", for: indexPath)
		guard let planetCell = cell as? PlanetCollectionViewCell else { return cell }
		
		let planet = planetController.planets[indexPath.item]
		
		planetCell.textLabel.text = planet.name
		planetCell.imageView.image = planet.image
		
		
		return planetCell
	}
}
