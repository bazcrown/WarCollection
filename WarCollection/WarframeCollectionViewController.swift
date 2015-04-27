//
//  WarframeCollectionViewController.swift
//  CollectionDemo
//
//  Created by Neil Smyth on 11/6/14.
//  Copyright (c) 2014 Neil Smyth. All rights reserved.
//

import UIKit

let reuseWFIdentifier = "WarframeCollectionViewCell"

class WarframeCollectionViewController: UICollectionViewController,
UICollectionViewDataSource, UICollectionViewDelegate  {
    
    var warframeImages = [UIImage]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let myLayout = MyFlowLayout()
        
//        var error:NSError?
//        let fileManager = NSFileManager()
//        let bundleDir = NSBundle.mainBundle().bundlePath
//        let bundleContents = fileManager.contentsOfDirectoryAtPath(bundleDir,
//            error: &error)
//        var files = fileManager.enumeratorAtPath(bundleDir)
//        var fstrings = [String]()
//        var warframeImages = [UIImage](NSBundle.u
//        while let file = files?.nextObject() {
//        
//            println(file)
//        }
//
//        let paths = [NSBundle.pathsForResourcesOfType("png", inDirectory: bundleDir)]
//        for path in pats{
//            println(path)
//        }
//        
//        if let contents = bundleContents{
//            if contents.count == 0{
//                println("empty")
//            } else {
//                println("appbundle = \(bundleContents)")
//                for t in contents.generate(){
//                    if var ts = t as? String {
//                        if ts.hasSuffix("png"){
//                            warframeImages.append(UIImage(named: ts)!)
//                        }
//                    }
//                }
//            }
//        } else if let theErr = error{
//            println("couldnt read")
//        }
//        
        
//        let fileMng = NSFileManager.defaultManager()
//        let dirPaths = NSSearchPathForDirectoriesInDomains(.DocumentDirectory, .UserDomainMask, true)
//        let docsDir = dirPaths[0] as! String
//        if fileMng.changeCurrentDirectoryPath(docsDir){
//            let temppaths = fileMng.enumeratorAtPath(fileMng.currentDirectoryPath)
//            if let tp = temppaths{
//                while var t = tp.nextObject()?.string {
//                    println(t)
//                }
//            }
//        }
//        let fm = NSFileManager.defaultManager()
//        var error:NSError?
//        let docs = fm.contentsAtPath(NSBundle.mainBundle()
//        println(docs)
//        println(warframeImages)
//        println(warframeImages)
//        for b in bd{
//            println(b)
//        }
//        println(bd.count)
//        let bc = fm.contentsOfDirectoryAtPath(NSBundle.mainBundle().bundlePat, error: &error)
//        for contents in bc!{
//            println(contents)
//        }
//
//        let bnd = NSBundle.mainBundle().bundlePath
//        var error : NSError?
//        let fileMng = NSFileManager.defaultManager()
//        let bc = fileMng.contentsOfDirectoryAtPath(bnd, error: &error)
//
//        let filelist = fileMng.contentsOfDirectoryAtPath(fileMng.currentDirectoryPath, error: &error)
//        for filename in filelist!{
//            println(filename)
//        }
//        for filename in bc!{
//            println(filename)
//        }
//        
        
        self.collectionView?.setCollectionViewLayout(myLayout,
            animated: true)
        
        let pinchRecognizer = UIPinchGestureRecognizer(target: self,
            action: "handlePinch:")
        
        self.collectionView?.addGestureRecognizer(pinchRecognizer)
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
//         Do any additional setup after loading the view.
        warframeImages = [
            UIImage(named:"ash.png")!,
            UIImage(named:"banshee.png")!,
            UIImage(named:"chroma.png")!,
            UIImage(named:"elytron.png")!,
            UIImage(named:"ember_prime.png")!,
            UIImage(named:"ember.png")!,
            UIImage(named:"excalibur_prime.png")!,
            UIImage(named:"excalibur.png")!,
            UIImage(named:"frost_prime.png")!,
            UIImage(named:"frost.png")!,
            UIImage(named:"hydroid.png")!,
            UIImage(named:"itzal.png")!,
            UIImage(named:"limbo.png")!,
            UIImage(named:"loki_prime.png")!,
            UIImage(named:"loki.png")!,
            UIImage(named:"mag_prime.png")!,
            UIImage(named:"mag.png")!,
            UIImage(named:"mesa.png")!,
            UIImage(named:"mirage.png")!,
            UIImage(named:"nekros.png")!,
            UIImage(named:"nova_prime.png")!,
            UIImage(named:"nova.png")!,
            UIImage(named:"nyx_prime.png")!,UIImage(named:"nyx.png")!,
            UIImage(named:"oberon.png")!,UIImage(named:"odonata_prime.png")!,UIImage(named:"odonata.png")!,
            UIImage(named:"rhino_prime.png")!,UIImage(named:"rhino.png")!,UIImage(named:"saryn.png")!,
            UIImage(named:"trinity.png")!,UIImage(named:"valkyr.png")!,UIImage(named:"vauban.png")!,
            UIImage(named:"volt_prime.png")!,UIImage(named:"volt.png")!,UIImage(named:"zephyr.png")!]
        
    }
    
    func handlePinch(gesture: UIPinchGestureRecognizer) {
        
        let layout = self.collectionView?.collectionViewLayout
            as! MyFlowLayout
        
        if gesture.state == UIGestureRecognizerState.Began
        {
            // Get the initial location of the pinch?
            let initialPinchPoint =
            gesture.locationInView(self.collectionView)
            
            // Convert pinch location into a specific cell
            let pinchedCellPath =
            self.collectionView?.indexPathForItemAtPoint(initialPinchPoint)
            
            // Store the indexPath to cell
            layout.currentCellPath = pinchedCellPath;
        }
        else if gesture.state == UIGestureRecognizerState.Changed
        {
            // Store the new center location of the selected cell
            layout.currentCellCenter =
                gesture.locationInView(self.collectionView)
            // Store the scale value
            layout.setCurrentCellScale(gesture.scale)
        }
        else
        {
            self.collectionView?.performBatchUpdates({
                layout.currentCellPath = nil
                layout.currentCellScale = 1.0}, completion:nil)
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    /*
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    }
    */
    
    // MARK: UICollectionViewDataSource
    
    
    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1
    }
    
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return warframeImages.count
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseWFIdentifier, forIndexPath: indexPath) as! WarframeCollectionViewCell
        
        // Configure the cell
        let image = warframeImages[indexPath.row]//UIImage(named: warframeImages[indexPath.row])
        cell.warframeImage.image = image
        
        
        return cell
    }
    
    // MARK: UICollectionViewFlowLayoutDelegate
    
    func collectionView(collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
            
            let image = warframeImages[indexPath.row]//UIImage(named: warframeImages[indexPath.row])
            return CGSize(width: 75, height: 50)
    }
    
    
    // MARK: UICollectionViewDelegate
    
    override func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        let myLayout = UICollectionViewFlowLayout()
        
        myLayout.scrollDirection =
            UICollectionViewScrollDirection.Horizontal
        
        self.collectionView?.setCollectionViewLayout(myLayout, animated: true)
        
    }
    
    
    override func collectionView(collectionView: UICollectionView,
        viewForSupplementaryElementOfKind kind: String,
        atIndexPath indexPath: NSIndexPath)
        -> UICollectionReusableView {
            
            var header: MyWFSupplementaryView?
            
            if kind == UICollectionElementKindSectionHeader {
                header =
                    collectionView.dequeueReusableSupplementaryViewOfKind(kind,
                        withReuseIdentifier: "warframeHeader", forIndexPath: indexPath)
                    as? MyWFSupplementaryView
                
                header?.warframeLabel.text = "Car Image Gallery"
            }
            return header!
    }
    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(collectionView: UICollectionView, shouldHighlightItemAtIndexPath indexPath: NSIndexPath) -> Bool {
    return true
    }
    */
    
    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(collectionView: UICollectionView, shouldSelectItemAtIndexPath indexPath: NSIndexPath) -> Bool {
    return true
    }
    */
    
    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(collectionView: UICollectionView, shouldShowMenuForItemAtIndexPath indexPath: NSIndexPath) -> Bool {
    return false
    }
    
    override func collectionView(collectionView: UICollectionView, canPerformAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) -> Bool {
    return false
    }
    
    override func collectionView(collectionView: UICollectionView, performAction action: Selector, forItemAtIndexPath indexPath: NSIndexPath, withSender sender: AnyObject?) {
    
    }
    */
    
}
