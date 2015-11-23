//: Playground - noun: a place where people can play


import XCPlayground
import UIKit


// let asychronous code run

XCPSetExecutionShouldContinueIndefinitely()


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

/*
if let url = NSURL(string: "http://www.google.com"){
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
//
//if let redditURL = NSURL(string: "https://www.reddit.com/.json") {
//    let task = NSURLSession.sharedSession().dataTaskWithURL(redditURL, completionHandler: { (data, response, error) -> Void in
//        let redditString = NSString(data: data!, encoding: NSUTF8StringEncoding)
//        print(redditString)
//        let redditJson = try! NSJSONSerialization.JSONObjectWithData(data!, options: NSJSONReadingOptions.AllowFragments)
//        print(redditJson)
//        
//    })
//    task.resume()

//}

var str = "Hello, playground"



