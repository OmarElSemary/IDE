//
//  HomePage.swift
//  IDE
//
//  Created by SemarY on 1/24/19.
//  Copyright © 2019 Omar Semary. All rights reserved.
//

import Foundation
import UIKit
import Alamofire
import Kingfisher
import ImageSlideshow


class HomePage: UIViewController, UICollectionViewDelegate ,UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {

    // Navigation Bar
    @IBAction func navBarSearch(_ sender: UIBarButtonItem) {
    }
    @IBAction func menuNavButton(_ sender: UIButton) {
//        let transition = CATransition()
//        transition.type = CATransitionType.push
//        transition.subtype = CATransitionSubtype.fromLeft
//        transition.timingFunction = CAMediaTimingFunction(name:CAMediaTimingFunctionName.easeInEaseOut)
//        view.window!.layer.add(transition, forKey: kCATransition)
        let categoriesView = self.storyboard?.instantiateViewController(withIdentifier: "Categories") as! Categories
        navigationController?.pushViewController(categoriesView, animated: true)
    }
    
    @IBOutlet weak var imageSlider: UIView!
    @IBOutlet weak var imageSliderLabel: UILabel!
    @IBAction func imageSliderViewAll(_ sender: UIButton) {
    }
    @IBAction func imagePrev(_ sender: UIButton) {
    }
    @IBAction func imageNext(_ sender: UIButton) {
    }
    @IBOutlet weak var coursesCollection: UICollectionView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    func blurEffect (view: UIView) {
        let blurEffect = UIBlurEffect(style: .dark)
        let blurView = UIVisualEffectView.init(effect: blurEffect)
        blurView.frame = view.bounds
        view.addSubview(blurView)
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! HomePageCell
        cell.layer.cornerRadius = 2
        cell.layer.borderWidth = 1
        cell.layer.borderColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let fixedWidth = coursesCollection.frame.width
        let fixedHeight = coursesCollection.frame.height/2
        if (indexPath.row == 0){
            return CGSize(width: fixedWidth, height: fixedHeight)
        } else {
            return CGSize(width: fixedWidth/2.03, height: fixedHeight)
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }


}
