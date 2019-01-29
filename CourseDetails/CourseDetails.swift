//
//  CourseDetails.swift
//  IDE
//
//  Created by SemarY on 1/25/19.
//  Copyright © 2019 Omar Semary. All rights reserved.
//

import UIKit
import Alamofire
import ExpyTableView

class CourseDetails: UIViewController, UITableViewDataSource, UITableViewDelegate {
//    func tableView(_ tableView: ExpyTableView, expandableCellForSection section: Int) -> UITableViewCell {
//        let innerCell = tableView.dequeueReusableCell(withIdentifier: "tablecell") as! InnerCourseDCell
//        return innerCell
//    }
//
//    func changeState(_ state: ExpyState, cellReuseStatus cellReuse: Bool) {
//
//    }
    
 
    


    @IBOutlet weak var courseTableExp: ExpyTableView!
    @IBAction func navMenu(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func navSearch(_ sender: UIButton) {
    }
    @IBOutlet weak var courseImage: UIImageView!
    @IBAction func applyNow(_ sender: UIButton) {
    }
    @IBOutlet weak var courseDescription: UILabel!
    @IBOutlet weak var courseDetails: UITextView!
    @IBOutlet weak var courseContentView: UIView!
    @IBOutlet weak var courseContent: UILabel!
    @IBOutlet weak var courseTable: UITableView!
    
    
    let dummieA = ["Swift","Android","Markting","Web","Desgin"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        courseTableExp.dataSource = self
        courseTableExp.delegate = self
        let inner = InnerCourseDCell()
        inner.awakeFromNib()
        let innerArrayCount = inner.deepAr.count
        print(innerArrayCount)
        
    }
    
    
    //MARK:- TableView
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableView.tag == 1 {
            return dummieA.count
        } else {
            let inner = InnerCourseDCell()
            inner.awakeFromNib()
            let innerArrayCount = inner.deepAr.count
            return innerArrayCount
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if tableView.tag == 1 {
        let selectedCell = dummieA[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "maincell") as! CourseDetailsCell
        cell.courseInfo.text = selectedCell
        return cell
        } else {
            let deepCell = tableView.dequeueReusableCell(withIdentifier: "deepcell") as! DeepCourseDCell
            return deepCell
        }

    }

    
    
    
    



}
