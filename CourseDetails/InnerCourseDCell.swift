//
//  InnerCourseDCell.swift
//  IDE
//
//  Created by SemarY on 1/26/19.
//  Copyright © 2019 Omar Semary. All rights reserved.
//

import UIKit
import ExpyTableView

class InnerCourseDCell: UITableViewCell, UITableViewDelegate, UITableViewDataSource, ExpyTableViewDataSource,ExpyTableViewDelegate  {
    func tableView(_ tableView: ExpyTableView, expandableCellForSection section: Int) -> UITableViewCell {
        let mainCell = tableView.dequeueReusableCell(withIdentifier: "maincell") as! CourseDetailsCell
        return mainCell
    }
    

    
    let deepAr = ["deep1","deep2","deep3"]
    @IBOutlet weak var innerExpy: ExpyTableView!
    @IBOutlet weak var innerCourseTable: UITableView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        innerCourseTable.delegate = self
        innerCourseTable.dataSource = self
        innerExpy.dataSource = self
        innerExpy.delegate = self
        
    }
    

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return deepAr.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let deepCell = tableView.dequeueReusableCell(withIdentifier: "deepcell") as! DeepCourseDCell
        let selectedCell = deepAr[indexPath.row]
        deepCell.textLabel?.text = selectedCell
        return deepCell
    }

}
