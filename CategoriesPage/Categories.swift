//
//  Categories.swift
//  IDE
//
//  Created by SemarY on 1/24/19.
//  Copyright © 2019 Omar Semary. All rights reserved.
//

import UIKit
import Alamofire
import Kingfisher

class Categories: UIViewController, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout, UICollectionViewDelegate {

    @IBOutlet weak var categoriesCollection: UICollectionView!
    @IBAction func backButton(_ sender: UIButton) {
        dismiss(animated: false, completion: nil)
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationItem.backBarButtonItem?.image = UIImage(named: "back.png")
    }
    

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = categoriesCollection.dequeueReusableCell(withReuseIdentifier: "catcell", for: indexPath) as! CategoriesCell
        cell.layer.borderWidth = 1
        cell.layer.borderColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        cell.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        if (cell.isSelected == true){
            cell.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        } else {
            cell.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        }
        
        if (indexPath.row == 0) {
        cell.catIcon.image = UIImage.init(named: "feacher.png")
        cell.catLabel.text = "All Courses"
        }else if (indexPath.row == 1) {
            cell.catIcon.image = UIImage.init(named: "web-design (1).png")
            cell.catLabel.text = "WEB DEVELOPMENT"
        }else if (indexPath.row == 2) {
            cell.catIcon.image = UIImage.init(named: "mobile-app-developing.png")
            cell.catLabel.text = "MOBILE DEVELOPMENT"
        }
        else if (indexPath.row == 3) {
            cell.catIcon.image = UIImage.init(named: "digital-marketing.png")
            cell.catLabel.text = "DIGITAL MARKETING"
        }else if (indexPath.row == 4) {
            cell.catIcon.image = UIImage.init(named: "fashion-design")
            cell.catLabel.text = "FASHION DESIGN"
        }else if (indexPath.row == 5) {
            cell.catIcon.image = UIImage.init(named: "web-design (1).png")
            cell.catLabel.text = "IMA COURSES"
        }
        return cell
    }
    


    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let fixedWidth = categoriesCollection.frame.width/2.1
        let fixedHeight = categoriesCollection.frame.height/3.3
            return CGSize(width: fixedWidth, height: fixedHeight)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let courseDetailsView = self.storyboard?.instantiateViewController(withIdentifier: "CourseDetails") as! CourseDetails
        courseDetailsView.loadViewIfNeeded()
        present(courseDetailsView, animated: true, completion: nil)
    }
    
}
