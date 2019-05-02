//
//  PlanetsCollectionViewController.swift
//  Planets
//
//  Created by Michael Redig on 5/2/19.
//  Copyright © 2019 Lambda Inc. All rights reserved.
//

import UIKit

class PlanetsCollectionViewController: UICollectionViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

	

	override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 5
	}
	
	override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PlanetCell", for: indexPath)
		guard let planetCell = cell as? PlanetCollectionViewCell else { return cell }
		
		planetCell.textLabel.text = "Marsorz"
		
		
		return planetCell
	}
}
