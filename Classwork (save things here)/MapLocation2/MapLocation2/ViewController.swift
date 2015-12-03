//
//  ViewController.swift
//  MapLocation2
//
//  Created by Cobo, Javier on 11/30/15.
//  Copyright © 2015 Cobo, Javier. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
import AddressBookUI

class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate {

    @IBOutlet weak var map: MKMapView!
    
    let locman = CLLocationManager()
    // lets you track where the person is now
    
    let searchRadius: CLLocationDistance = 250
    // lets you set the radius of your map view.  How close you are
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.map.mapType = MKMapType.Hybrid
        
        // lets you populate your map outlet with the kind of map you want
        
        let initialLocation = CLLocation(latitude: 38.904854, longitude: -77.033812)

        centerOnLocation(initialLocation)
        
        // lets you recenter on initial location whenever you want
        
        self.map.delegate = self
        self.locman.delegate = self
        self.locman.desiredAccuracy = kCLLocationAccuracyBest
        //more accuracy makes for higher battery usage/computing power
        self.locman.activityType = .Fitness
        //type of activity you'll be using the location data for
        
        //all the stuff above lets you have location manager update settings
        self.locman.startUpdatingLocation()
        //actually have it update the location
        
    
    }
    
    
    func centerOnLocation(location: CLLocation) {
        let coordinateRegion = MKCoordinateRegionMakeWithDistance(location.coordinate, self.searchRadius * 2.0, self.searchRadius * 2.0)
        self.map.setRegion(coordinateRegion, animated: true)
 
    }
    
    func determineStatus() -> Bool {
        let ok = CLLocationManager.locationServicesEnabled()
        if !ok {
            return true //this is what we try to use it anyway - system will ask user to turn on location services
        }
        let status = CLLocationManager.authorizationStatus()
        switch status {
        case CLAuthorizationStatus.AuthorizedAlways, .AuthorizedWhenInUse:
            return true
        case .NotDetermined:
            self.locman.requestWhenInUseAuthorization()
            return true
        case .Restricted:
            return false
        case .Denied:
            return false
            
        }
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        print("Updated location")
        //the above constantly updating the location
        let loc = locations.last! as CLLocation
        //this is giving us the last location
        let coord = loc.coordinate
        print("You are at \(coord.latitude), \(coord.longitude)")
        
        // self.locman.stopUpdatingLocation()
        
    }
    
    func locationManager(manager: CLLocationManager, didFailWithError error: NSError) {
        print("Failed: \(error)")
        self.locman.stopUpdatingLocation()
    }

    @IBAction func showCurrentLocation(sender: AnyObject) {
        self.locman.requestWhenInUseAuthorization()
        //gives the popup that asks the user if we can track their location within this context
        // you have to add something under info.plist to add the blurb under this thing
        self.map.userTrackingMode = .Follow
        // connects the button to update the map on where the user is now
    }
    
    @IBAction func getUserAddress(sender: AnyObject) {
        let loc = self.map.userLocation.location
        //this will get the location of where the bubble is on the map
        if loc == nil {
            print("I have no idea where the heck you are!")
            return
        }
        
        let geo = CLGeocoder()
        geo.reverseGeocodeLocation(loc!) { (placemarks, errors) -> Void in
            if placemarks != nil {
                let p = placemarks![0] as! CLPlacemark
                let address = ABCreateStringWithAddressDictionary(p.addressDictionary!, false)
                print("You are at: \n\(address)")
            }
            
        }
    }
    
    
    @IBAction func findFood(sender: AnyObject) {
        if !determineStatus() {
            print("You haven't authorized locations or loc services are off")
            return
        }
       let loc = self.map.userLocation.location
        if loc == nil {
            print("I don't know where you are right")
            return
        }
        let req = MKLocalSearchRequest()
        //you are doing a search for things in a location
        req.region = self.map.region
        //you have to tell it where it's going to search
        req.naturalLanguageQuery = "pizza"
        let search = MKLocalSearch(request: req)
        search.startWithCompletionHandler{ (response, error) -> Void in
            if response == nil {
                print(error)
                return
            }
            self.map.showsUserLocation = false
            // hide the blue dot so that they don't hide the locations
            let m1 = response!.mapItems[0] as MKMapItem
            let place = m1.placemark
            let loc = place.location!.coordinate
            let pizzaPlace1 = MKPointAnnotation()
            pizzaPlace1.title = m1.name
            pizzaPlace1.subtitle = m1.phoneNumber
            pizzaPlace1.coordinate = loc
            self.map.addAnnotation(pizzaPlace1)
            
            let pizzaPlace2 = Pizza(title: "Mario's Pizza", subTitle: "703-555-5555", coordinate: (response!.mapItems[1] as MKMapItem).placemark.location!.coordinate)
            self.map.addAnnotation(pizzaPlace2)
        }
        
    }
    
    @IBAction func openInMaps(sender: AnyObject) {
        let mi = MKMapItem.mapItemForCurrentLocation()
        mi.openInMapsWithLaunchOptions([
            MKLaunchOptionsMapTypeKey: MKMapType.Standard.rawValue
        ]
        )
    }
    
    @IBAction func getDirections(sender: AnyObject) {
        
        if !determineStatus() {
            print("You haven't authorized locations or loc services are off")
            return
        }
        let loc = self.map.userLocation.location
        if loc == nil {
            print("I don't know where you are right")
            return
        }
        let req = MKLocalSearchRequest()
        //you are doing a search for things in a location
        req.region = self.map.region
        //you have to tell it where it's going to search
        req.naturalLanguageQuery = "pizza"
        let search = MKLocalSearch(request: req)
        search.startWithCompletionHandler{ (response, error) -> Void in
            if response == nil {
                print(error)
                return
            }
            self.map.showsUserLocation = false
            // hide the blue dot so that they don't hide the locations
            let m1 = response!.mapItems[0] as MKMapItem

            let dirReq = MKDirectionsRequest()
            dirReq.source = MKMapItem.mapItemForCurrentLocation()
            dirReq.destination = m1
            //both source & destination must be map items
            let directions = MKDirections(request: dirReq)
            directions.calculateDirectionsWithCompletionHandler({ (response,error) -> Void in
                if response == nil {
                    print(error)
                    return
                }
                print("got directions")
                
                let route = response!.routes[0]
                // feeling lucky (getting the first route)
                let poly = route.polyline
                self.map.addOverlay(poly)
                
                for step in route.steps {
                    print("After \(step.distance) meters \(step.instructions)")
                }
    
        })
        
    }
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        

        // Dispose of any resources that can be recreated.
    }


}

