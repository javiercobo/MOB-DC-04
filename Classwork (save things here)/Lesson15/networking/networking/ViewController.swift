//
//  ViewController.swift
//  networking
//
//  Created by Cobo, Javier on 11/18/15.
//  Copyright © 2015 Cobo, Javier. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        /*
        //Step 1: Create NSURL object of the URL/API endpoint
        if let url = NSURL(string: "http://www.asdfka;lkjasd;f.com"){
            //Step 2: create the task
            let task = NSURLSession.sharedSession().dataTaskWithURL(url, completionHandler: { (data, response, error) -> Void in
                if error == nil {
                    let googleSource = NSString(data: data!, encoding: NSUTF8StringEncoding)
                    
                    //Do something with the data and see if there's an error
                    print(googleSource)
                }else {
                    print("There was an error talking to Google")
                }
               
                
            })
            task.resume()
        }
*/
        
        
//        if let redditURL = NSURL(string: "https://www.reddit.com/.json") {
//            let task = NSURLSession.sharedSession().dataTaskWithURL(redditURL, completionHandler: { (data, response, error) -> Void in
//                let redditString = NSString(data: data!, encoding: NSUTF8StringEncoding)
//       //         print(redditString)
//                let redditJson = try! NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments)
//         //       print(redditJson)
//                
//                if let redditData = redditJson["data"] as? NSDictionary {
//                    if let children = redditData["children"] as? NSArray {
//                        if let firstArticle = children[0] as? NSDictionary {
//                        if let data = firstArticle["data"] as? NSDictionary {
//                            if let title = data["title"] as? NSString {
//                                print(title)
//                            }
//                        }
//                }
//                    }}
//            })
//            task.resume()
//
//            
//        }
     
        if let mashableURL = NSURL(string: "https://mshable.com/stories.json") {
            let task = NSURLSession.sharedSession().dataTaskWithURL(mashableURL, completionHandler: { (data, response, error) -> Void in
                let mashableJson = try! NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments)
                if let mashableData = mashableJson["new"] as? NSArray {
                    if let article = mashableData[0] as? NSDictionary {
                    if let title = article["title"] as? NSString {
                        print(title)
                    }
                    }
                }
            })
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
          }

}
