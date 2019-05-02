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

	var planets: [Planet] {
		var output = [
			Planet(name: "Mercury", imageName: "mercury"),
			Planet(name: "Venus", imageName: "venus"),
			Planet(name: "Earth", imageName: "earth"),
			Planet(name: "Mars", imageName: "mars"),
			Planet(name: "Jupiter", imageName: "jupiter"),
			Planet(name: "Saturn", imageName: "saturn"),
			Planet(name: "Uranus", imageName: "uranus"),
			Planet(name: "Neptune", imageName: "neptune"),
		]
		let defaults = UserDefaults.standard
		let includePluto = defaults.value(forKey: PlanetController.plutoKey) as? Bool ?? false
		if includePluto {
			output.append(Planet(name: "Pluto", imageName: "pluto"))
		}
		return output
	}
}
