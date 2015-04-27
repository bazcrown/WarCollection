//
//  PrimaryCollectionViewController.swift
//  CollectionDemo
//
//  Created by Neil Smyth on 11/6/14.
//  Copyright (c) 2014 Neil Smyth. All rights reserved.
//

import UIKit

let reusePRIdentifier = "PrimaryCollectionViewCell"

class PrimaryCollectionViewController: UICollectionViewController,
UICollectionViewDataSource, UICollectionViewDelegate  {
    
    var primaryImages = [UIImage]()
    
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
        //        var primaryImages = [UIImage](NSBundle.u
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
        //                            primaryImages.append(UIImage(named: ts)!)
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
        //        println(primaryImages)
        //        println(primaryImages)
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
        primaryImages = [
            UIImage(named:"amprex.png")!,
            UIImage(named:"attica.png")!,
            UIImage(named:"boar_prime.png")!,
            UIImage(named:"boar.png")!,
            UIImage(named:"boltor_prime.png")!,
            UIImage(named:"boltor.png")!,
            UIImage(named:"braton_prime.png")!,
            UIImage(named:"braton_vandal.png")!,
            UIImage(named:"braton.png")!,
            UIImage(named:"burston_prime.png")!,
            UIImage(named:"burston.png")!,
            UIImage(named:"buzlok.png")!,
            UIImage(named:"cernos.png")!,
            UIImage(named:"corvas.png")!,
            UIImage(named:"dera.png")!,
            UIImage(named:"drakgoon.png")!,
            UIImage(named:"dread.png")!,
            UIImage(named:"dual_decurion.png")!,
            UIImage(named:"fluctus.png")!,
            UIImage(named:"fusil_a_flux.png")!,
            UIImage(named:"glaxion.png")!,
            UIImage(named:"gorgon_wraith.png")!,
            UIImage(named:"gorgon.png")!,
            UIImage(named:"grakata.png")!,
            UIImage(named:"grinlock.png")!,
            UIImage(named:"hek.png")!,
            UIImage(named:"hind.png")!,
            UIImage(named:"ignis.png")!,
            UIImage(named:"imperator_vandal.png")!,
            UIImage(named:"imperator.png")!,
            UIImage(named:"karak.png")!,
            UIImage(named:"kohm.png")!,
            UIImage(named:"lanka.png")!,
            UIImage(named:"latron_prime.png")!,
            UIImage(named:"latron_wraith.png")!,
            UIImage(named:"latron.png")!,
            UIImage(named:"miter.png")!,
            UIImage(named:"mk1-braton.png")!,
            UIImage(named:"mk1-paris.png")!,
            UIImage(named:"mk1-strun.png")!,
            UIImage(named:"ogris.png")!,
            UIImage(named:"opticor.png")!,
            UIImage(named:"panthera.png")!,
            UIImage(named:"paracyst.png")!,
            UIImage(named:"paris_prime.png")!,
            UIImage(named:"paris.png")!,
            UIImage(named:"penta.png")!,
            UIImage(named:"phage.png")!,
            UIImage(named:"prisma_gorgon.png")!,
            UIImage(named:"quanta_mutaliste.png")!,
            UIImage(named:"quanta.png")!,
            UIImage(named:"snipetron_vandal.png")!,
            UIImage(named:"snipetron.png")!,
            UIImage(named:"sobek.png")!,
            UIImage(named:"soma_prime.png")!,
            UIImage(named:"soma.png")!,
            UIImage(named:"strun_wraith.png")!,
            UIImage(named:"strun.png")!,
            UIImage(named:"supra.png")!,
            UIImage(named:"sybaris.png")!,
            UIImage(named:"synapse.png")!,
            UIImage(named:"tetra.png")!,
            UIImage(named:"tiberon.png")!,
            UIImage(named:"tigris.png")!,
            UIImage(named:"torid.png")!,
            UIImage(named:"vectis.png")!,
            UIImage(named:"velocitus.png")!,
            UIImage(named:"vulkar.png")!
        ]
//        primaryImages = ["Amprex","Attica","Boar","Boar Prime",
//            "Boltor","Boltor Prime","Braton","Braton Prime",
//            "Braton Vandal","Burston","Burston Prime","Buzlok",
//            "Cernos","Corvas","Dera","Drakgoon",
//            "Dread","Dual Decurion","Fluctus","Flux Rifle",
//            "Glaxion","Gorgon","Gorgon Wraith","Grakata",
//            "Grinlok","Hek","Hind","Ignis",
//            "Imperator","Imperator Vandal","Karak","Kohm",
//            "Lanka","Latron","Latron Prime","Latron Wraith",
//            "Miter","Mk1-Braton","Mk1-Paris","Mk1-Strun",
//            "Mutalist Quanta","Ogris","Opticor","Panthera",
//            "Paracyst","Paris","Paris Prime","Penta",
//            "Phage","Prisma Gorgon","Quanta","Snipetron",
//            "Snipetron Vandal","Sobek","Soma","Soma Prime","Strun",
//            "Strun Wraith","Supra","Sybaris","Synapse",
//            "Tetra","Tiberon","Tigris","Torid",
//            "Vectis","Velocitus","Vulkar"]
        
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
        return primaryImages.count
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reusePRIdentifier, forIndexPath: indexPath) as! PrimaryCollectionViewCell
        
        // Configure the cell
        let image = primaryImages[indexPath.row]//UIImage(named: primaryImages[indexPath.row])
        cell.primaryImage.image = image
        
        
        return cell
    }
    
    // MARK: UICollectionViewFlowLayoutDelegate
    
    func collectionView(collectionView: UICollectionView,
        layout collectionViewLayout: UICollectionViewLayout,
        sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
            
            let image = primaryImages[indexPath.row]//UIImage(named: primaryImages[indexPath.row])
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
            
            var header: MyPRSupplementaryView?
            
            if kind == UICollectionElementKindSectionHeader {
                header =
                    collectionView.dequeueReusableSupplementaryViewOfKind(kind,
                        withReuseIdentifier: "primaryHeader", forIndexPath: indexPath)
                    as? MyPRSupplementaryView
                
                header?.primaryLabel.text = "Primary Weapon Select"
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
