//
//  PlanetController.swift
//  Planets
//
//  Created by Andrew R Madsen on 8/2/18.
//  Copyright © 2018 Lambda Inc. All rights reserved.
//

import Foundation

class PlanetController {
	static let plutoKey = "includePluto"

    var planets = [
        Planet(name: "Mercury", imageName: "mercury"),
        Planet(name: "Venus", imageName: "venus"),
        Planet(name: "Earth", imageName: "earth"),
        Planet(name: "Mars", imageName: "mars"),
        Planet(name: "Jupiter", imageName: "jupiter"),
        Planet(name: "Saturn", imageName: "saturn"),
        Planet(name: "Uranus", imageName: "uranus"),
        Planet(name: "Neptune", imageName: "neptune"),
        ]
	
	
	func updatePlanets() {
		let defaults = UserDefaults.standard
		let includePluto = defaults.value(forKey: PlanetController.plutoKey) as? Bool ?? false
		
		if includePluto && !plutoIsCurrentlyIncluded {
			planets.append(Planet(name: "Pluto", imageName: "pluto"))
		} else if !includePluto && plutoIsCurrentlyIncluded {
			planets.removeAll { (planet) -> Bool in
				return planet.name == "Pluto"
			}
		}
	}
	
	var plutoIsCurrentlyIncluded: Bool {
		for planet in planets {
			if planet.name == "Pluto" {
				return true
			}
		}
		return false
	}
}
